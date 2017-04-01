import java.io.*;

public class re2 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        System.out.print("Enter secret code to view password for next meeting: ");
        String input = br.readLine();
        int[] flag = {102, 108, 97, 103, 123, 106, 97, 118, 97, 95, 105, 115, 95, 110, 111, 116, 95, 106, 117, 115, 116, 95, 99, 111, 102, 102, 101, 101, 125};
        if (input.compareTo("weakpassword") == 0) {
            System.out.print("Correct! The secret password is ");
            for(int element: flag) {
                System.out.print((char)element);
            }
            System.out.println();
        }
        else {
            System.out.println("Boo! Wrong secret code!");
        }
        return;
    }
};
