package ${packageName};

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

import com.willy.ratingbar.ScaleRatingBar;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class RatingActivity extends AppCompatActivity {

    @BindView(R.id.ratingBar)
    ScaleRatingBar ratingBar;
    @BindView(R.id.tvWait)
    TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rating);
        ButterKnife.bind(this);

        ratingBar.setOnRatingChangeListener((baseRatingBar, v) -> tv.setText("Благодарим!"));
    }

    @OnClick(R.id.ratingBar)
    void onRatingBarClicked() {
        tv.setText("Благодарим!");
    }
}