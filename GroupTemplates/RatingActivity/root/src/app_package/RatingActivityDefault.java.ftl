package ${packageName};

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.RatingBar;
import android.widget.TextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class RatingActivity extends AppCompatActivity {

    @BindView(R.id.ratingBar)
    RatingBar ratingBar;
    @BindView(R.id.tvWait)
    TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rating);
        ButterKnife.bind(this);

        ratingBar.setOnRatingBarChangeListener((baseRatingBar, v) -> tv.setText("Благодарим!"));
    }

    @OnClick(R.id.ratingBar)
    void onRatingBarClicked() {
        tv.setText("Благодарим!");
    }
}