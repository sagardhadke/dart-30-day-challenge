//* Question 5: File Path Printer
//* Take folder name, subfolder name, and file name as input. Print complete file path using \\:
//* C:\Users\[folder]\[subfolder]\[filename].txt

void main() {
  String folder = "Documents";
  String subfolder = "Projects";
  String filename = "code";

  print("C:\\Users\\$folder\\$subfolder\\$filename.txt");
}
