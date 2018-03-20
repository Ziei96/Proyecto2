
class Box {

  Body body;
  float w;
  float h;

  Box(float x, float y) {
    w = random(4, 8);
    h = random(4, 8);
    makeBody(new Vec2(x, y), w, h);
  }

  void killBody() {
    box2d.destroyBody(body);
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    if (pos.y > height+w*h) {
      killBody();
      return true;
    }
    return false;
  }
  
  void applyForce(Vec2 force) {
    Vec2 pos = body.getWorldCenter();
    body.applyForce(force, pos);
  }

  void display() {

  fill(#21740B);
  stroke(0, 0, 0);
  rect(115, 305, 10, 10);
  rect(127, 311, 6, 21);
  rect(223, 337, 13, 10);
  rect(198, 328, 11, 14);
  rect(172, 335, 11, 12);
  rect(143, 323, 12, 15);
  rect(158, 308, 12, 13);
  rect(130, 296, 11, 13);
  rect(160, 292, 11, 11);
  rect(195, 298, 11, 17);
  rect(215, 302, 9, 18);
  rect(178, 289, 12, 14);
  rect(148, 292, 8, 13);
  rect(113, 284, 10, 9);
  rect(131, 276, 12, 11);
  rect(107.8, 262.2, 11.2, 14.8);
  rect(135, 264, 11, 9);
  rect(161, 262, 11, 13);
  rect(187, 276, 8, 10);
  rect(212, 288, 9, 10);
  rect(137, 200, 10, 17);
  rect(139, 221, 12, 9);
  rect(183, 257, 12, 12);
  rect(200, 275, 11, 11);
  rect(229, 301, 6, 23);
  rect(226, 285, 13, 8);
  rect(205, 259, 16, 9);
  rect(244, 303, 7, 13);
  rect(193, 230, 9, 14);
  rect(157, 245, 14, 12);
  rect(129, 245, 11, 9);
  rect(103, 235, 8, 15);
  rect(120, 232, 10, 9);
  rect(121, 213, 9, 9);
  rect(126, 190, 7, 10);
  rect(151, 195, 8, 21);
  rect(162, 233, 10, 7);
  rect(165, 203, 5, 13);
  rect(176, 231, 9, 14);
  rect(178, 201, 11, 16);
  rect(157, 181, 12, 9);
  rect(179, 175, 9, 22);
  rect(199, 212, 10, 12);
  rect(212, 235, 15, 10);
  rect(231, 263, 11, 13);
  rect(247, 283, 11, 9);
  rect(261, 266, 12, 12);
  rect(233, 246, 11, 12);
  rect(213, 220, 8, 9);
  rect(200, 199, 9, 9);
  rect(196, 180, 10, 12);
  rect(217, 194, 11, 18);
  rect(233, 230, 10, 13);
  rect(249, 261, 7, 10);
  rect(228, 212, 9, 17);
  rect(233, 193, 11, 14);
  rect(220, 177, 10, 7);
  rect(191, 165, 8, 12);
  rect(142, 170, 10, 13);
  rect(170, 168, 9, 7);
  rect(175, 150, 14, 10);
  rect(203, 155, 7, 13);
  rect(228, 168, 11, 8);
  rect(208, 174, 7, 11);
  rect(233, 181, 10, 9);
  rect(217, 154, 10, 7);
  rect(192, 139, 4, 19);
  rect(205, 140, 15, 9);
  rect(234, 151, 7, 10);
  rect(248, 236, 5, 15);
  rect(263, 239, 11, 13);
  rect(259, 214, 12, 14);
  rect(244, 163, 7, 10);
  rect(248, 182, 8, 13);
  rect(243, 219, 6, 11);
  rect(251, 196, 12, 7);
  rect(291, 137, 18, 10);
  rect(227, 131, 7, 16);
  rect(243, 136, 15, 15);
  rect(258, 164, 14, 8);
  rect(269, 140, 8, 17);
  rect(264, 182, 7, 9);
  rect(278, 320, 14, 12);
  rect(279, 351, 11, 8);
  rect(272, 162, 9, 10);
  rect(298, 157, 11, 11);
  rect(283, 185, 8, 14);
  rect(307, 183, 7, 11);
  rect(268, 207, 9, 4);
  rect(281, 230, 6, 19);
  rect(278, 212, 12, 11);
  rect(285, 153, 5, 18);
  rect(274, 187, 4, 12);
  rect(297, 182, 5, 22);
  rect(317, 165, 11, 14);
  rect(316, 143, 4, 12);
  rect(334, 157, 7, 20);
  rect(329, 138, 8, 15);
  rect(315.3, 186, 15.7, 11.1);
  rect(294, 208, 10, 8);
  rect(292, 240, 11, 14);
  rect(283, 285, 7, 14);
  rect(290, 270, 10, 15);
  rect(175, 319, 17, 11);
  rect(276, 303, 23, 10);
  rect(306, 259, 5, 15);
  rect(292, 221, 11, 14);
  rect(308, 201, 11, 18);
  rect(306, 232, 7, 19);
  rect(315, 263, 8, 19);
  rect(303, 281, 7, 19);
  rect(304, 330, 9, 10);
  rect(318, 228, 8, 11);
  rect(341, 141, 11, 12);
  rect(336, 184, 10, 12);
  rect(345, 158, 13, 18);
  rect(324, 205, 8, 15);
  rect(317, 245, 14, 13);
  rect(315, 286, 6, 15);
  rect(282, 332, 10, 15);
  rect(313, 319, 14, 7);
  rect(197, 250, 12, 5);
  rect(145, 237, 6, 12);
  rect(166, 221, 19, 6);
  rect(117, 250, 9, 11);
  rect(293, 172, 13, 6);
  rect(337, 202, 9, 16);
  rect(332, 224, 6, 16);
  rect(311, 304, 16, 8);
  rect(322, 334, 17, 8);
  rect(329, 280, 6, 16);
  rect(350, 183, 11, 15);
  rect(362, 141, 9, 19);
  rect(361, 172, 9, 11);
  rect(350.9, 205, 11.1, 9.5);
  rect(337, 241, 10, 11);
  rect(336, 264, 14, 13);
  rect(337, 294, 8, 10);
  rect(349, 247, 14, 11);
  rect(350.2, 220, 12.8, 15);
  rect(366, 191, 7, 14);
  rect(370, 165, 18, 7);
  rect(376, 198, 10, 18);
  rect(365, 230, 15, 11);
  rect(357, 266, 8, 6);
  rect(344, 283, 11, 10);
  rect(344, 309, 8, 8);
  rect(368, 246, 7, 10);
  rect(370, 183, 11, 8);
  rect(397, 184, 8, 14);
  rect(360, 308, 13, 12);
  rect(379, 298, 12, 12);
  rect(396, 282, 14, 11);
  rect(400.5, 265.5, 16, 5);
  rect(364, 285, 9, 10);
  rect(378, 223, 14, 6);
  rect(387, 178, 6, 13);
  rect(392, 158, 7, 13);
  rect(378, 144, 11, 14);
  rect(397, 168, 14, 16);
  rect(392, 210, 11, 10);
  rect(408, 189, 11, 15);
  rect(397, 227, 9, 12);
  rect(365, 266, 15, 6);
  rect(380, 238, 7, 13);
  rect(392, 242, 15, 11);
  rect(409, 212, 11, 13);
  rect(409, 246, 4, 16);
  rect(410, 228, 12, 8);
  rect(386, 256, 12, 9);
  rect(376, 283, 10, 10);
  rect(417, 244, 9, 15);
  rect(332, 322, 21, 6);
  rect(386, 274, 10, 8);
  rect(413, 272, 15, 6);
  rect(396, 299, 8, 10);
  rect(378, 317, 10, 9);
  rect(357, 325, 15, 11);
  rect(295, 340, 18, 8);
  rect(260, 256, 9, 6);
  rect(253, 208, 3, 12);
  rect(257, 238, 2, 15);
  rect(284.3, 260.7, 4.7, 4.3);
  rect(260, 129, 16, 7);
  rect(281, 124, 9, 15);
  rect(308, 124, 12, 12);
  rect(340, 129, 16, 7);
  rect(324, 125, 9, 9);
  rect(295, 124, 7, 9);
  rect(241, 125, 13, 8);
  rect(156, 155, 15, 7);
  rect(276, 273, 8, 9);
  rect(256, 291, 15, 8);
  rect(258, 305, 13, 12);
  rect(233, 323, 7, 8);
  rect(150, 276, 15, 8);
  rect(146, 256, 7, 8);
  rect(246, 326, 11, 5);
  rect(261, 323, 11, 13);
  rect(216, 324, 8, 9);
  rect(297, 317, 8, 8);
  rect(261, 341, 11, 8);
  rect(176, 307, 10, 8);
  rect(173, 274, 10, 11);
  rect(176, 245, 7, 12);
  rect(216, 272, 8, 9);
  rect(366, 214, 7, 12);
  rect(170, 187, 4, 16);
  rect(258, 153, 6, 6);
  rect(216, 249, 11, 7);
  rect(274, 252, 7, 10);
  rect(294, 258, 7, 8);
    
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();

    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(#21740B);;
    stroke(0);
    rect(0, 0, w, h);
    popMatrix();
  }

  void makeBody(Vec2 center, float w_, float h_) {

    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);

    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;

    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));

    body = box2d.createBody(bd);
    body.createFixture(fd);

    body.setLinearVelocity(new Vec2(random(-5, 5), random(2, 5)));
    body.setAngularVelocity(random(-5, 5));
  }
}