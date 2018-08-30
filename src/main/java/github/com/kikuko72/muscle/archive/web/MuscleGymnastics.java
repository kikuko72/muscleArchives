package github.com.kikuko72.muscle.archive.web;

import com.codeborne.selenide.Selenide;

public class MuscleGymnastics {
    public static MuscleGymnastics open() {
        return  Selenide.open("http://www4.nhk.or.jp/P4975/23/", MuscleGymnastics.class);
    }
}

