//* Q19. Shipping Charge:
//* orderValue = 800
//* int shipping = orderValue >= 500 ? 0 : 50; (free shipping above 500)
//* Print shipping charge

void main() {
  int orderValue = 800;
  int shipping = orderValue >= 500 ? 0 : 50;
  print(shipping);
}
