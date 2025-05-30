class Bullet extends GameObject {
  float speed = 10; // Velocidad de la bala.

  Bullet(String image, Vector2 initPos, float rotation) {
    super(image, initPos);
    transform.rotation = rotation;
  }

  void Update() {
    Vector2 forward = new Vector2(cos(radians(transform.rotation - 80)), sin(radians(transform.rotation - 90)));
    forward.mult(speed);
    transform.Translate(forward);
  }
}
