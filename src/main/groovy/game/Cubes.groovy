package game

class Cubes {

    private static final int INITIAL_COLOR = 2
    private final int rows
    private final int columns

    List<List> colors

    Cubes(int rows, int columns) {
        this.columns = columns
        this.rows = rows
        colors = []
        rows.times { row ->
            colors.add([])
            columns.times { column ->
                colors.last() << INITIAL_COLOR
            }
        }
    }

    void touch(int row, int column, int color) {
        colors[row][column] = color
    }
}
