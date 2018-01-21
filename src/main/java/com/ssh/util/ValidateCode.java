package com.ssh.util;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Map;
import java.util.Random;

public class ValidateCode {
	private static int WIDTH = 80;
	private static int HEIGHT = 30;
	private static int NUM = 4;
	private static int line = 4;

	private static char[] seq = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
			'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
			'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8',
			'9' };

	private byte[] generator(Map<String,Object> session) throws Exception {
		Random r = new Random();

		BufferedImage image = new BufferedImage(WIDTH, HEIGHT,
				BufferedImage.TYPE_INT_RGB);

		Graphics g = image.getGraphics();
		g.setColor(randomColor(r));
		g.fillRect(0, 0, WIDTH, HEIGHT);
		g.setColor(new Color(0, 0, 0));
		StringBuffer number = new StringBuffer();
		for (int i = 0; i < NUM; i++) {
			g.setColor(randomColor(r));
			int h = (int) ((HEIGHT * 70 / 100) * r.nextDouble() + (HEIGHT * 40 / 100));
			g.setFont(new Font(null, Font.BOLD | Font.ITALIC, h));
			String ch = String.valueOf(seq[r.nextInt(seq.length)]);
			number.append(ch);
			g.drawString(ch, i * WIDTH / NUM * 90 / 100, h);
		}
		for (int i = 0; i <= line; i++) {
			g.setColor(randomColor(r));
			g.drawLine(r.nextInt(WIDTH), r.nextInt(HEIGHT), r.nextInt(WIDTH), r
					.nextInt(HEIGHT));

		}

		ByteArrayOutputStream os = new ByteArrayOutputStream();
		//JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(os);
		//encoder.encode(image);
		javax.imageio.ImageIO.write(image, "jpeg", os);
		session.put("imageCode", number.toString());
		return os.toByteArray();
	}

	private Color randomColor(Random r) {
		return new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255));

	}

	public InputStream getCode(Map<String,Object> session) throws Exception {
		return new ByteArrayInputStream(generator(session));
	}

}

