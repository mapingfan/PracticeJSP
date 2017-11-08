package wrap;

import java.io.Serializable;

public class GuessNumber implements Serializable {
    private int random;
    private int guessCount = 0;
    private int guess_1;
    private String result;
    private boolean right = false;

    public boolean isRight() {
        if (random == guess_1) {
            guessCount = 0;
            right = true;
        } else {
            right = false;
        }
        return right;
    }


    public String getResult() {
        if (guess_1 < random) {
            result = "猜小了";
        } else if (guess_1 > random) {
            result = "猜大了";
        } else {
            result = "猜对了";
        }
        return result;
    }


    public int getGuess_1() {
        return guess_1;
    }

    public void setGuess_1(int guess_1) {
        this.guess_1 = guess_1;
        guessCount++;
    }

    public int getGuessCount() {
        return guessCount;
    }

    public void setRandom(int random) {
        this.random = random;
    }
}
