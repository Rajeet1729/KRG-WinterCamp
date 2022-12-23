import java.util.*;

public class Main {

	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		String ch;
		do {
			addBowler();
			System.out.println("Enter Y if you want to add a bowler's Score or N if you want to exit. ");
			ch = sc.next();
		} while (ch.equals("Y"));
		System.out.println("Thanks!!  For using our application.");
		sc.close();
	}

	static void addBowler() {
		int[] score = new int[6];
		int maxScore = 0;
		int minScore = 100000;
		int sumScore = 0;
		for (int i = 0; i < 6; i++) {
			int newScore = input_score(i + 1);
			if (newScore == -1) {
				i--;
				continue;
			}
			score[i] = newScore;
			sumScore += newScore;
			if (score[i] > maxScore)
				maxScore = score[i];
			if (score[i] < minScore)
				minScore = score[i];
		}
		System.out.println("Average: " + sumScore / 6);

		System.out.println("Maximum Score: " + maxScore);

		System.out.println("Minimum Score: " + minScore);

		System.out.print("Score of the bowler are: ");
		for (int i = 0; i < 6; i++) {
			if (i == 0)
				System.out.print("[ " + score[i]);
			else if (i == 5)
				System.out.print(", " + score[i] + " ] ");
			else
				System.out.print(", " + score[i]);
		}
		System.out.println();
	}

	static int validate_score(int game_scr) {
		if (game_scr >= 0 && game_scr <= 300)
			return game_scr;
		else
			System.out.println("Invalid entry. score must be between 0 and 300. Try again.");
		return -1;
	}

	static int input_score(int n) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter score for Game " + n + " :");
		int score = sc.nextInt();
		sc.close();
		return validate_score(score);
	}

};