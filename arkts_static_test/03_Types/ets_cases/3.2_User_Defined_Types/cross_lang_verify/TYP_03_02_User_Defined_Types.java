/**
 * Java cross-language verification for 3.2 User-Defined Types
 */
class TYP_03_02_User_Defined_Types {
    static class Point {
        int x;
        int y;
    }

    public static void main(String[] args) {
        Point p = new Point();
        p.x = 1;
        p.y = 2;
        System.out.println("3.02: Point(" + p.x + "," + p.y + ")");
    }
}
