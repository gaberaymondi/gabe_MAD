package com.example.christmas;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {
    private TextView christmasGift;
    private ToggleButton toggle;
    private Spinner relation;
    private RadioGroup price;
    private CheckBox funnyCheckBox;
    private CheckBox caringCheckBox;
    private CheckBox bigCheckBox;
    private CheckBox smallCheckBox;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //get views
        christmasGift = findViewById(R.id.sportTextView);
        toggle = findViewById(R.id.toggleButton);
        relation = findViewById(R.id.spinner);
        price = findViewById(R.id.radioGroup);
        funnyCheckBox = findViewById(R.id.checkBox1);
        caringCheckBox = findViewById(R.id.checkBox2);
        bigCheckBox = findViewById(R.id.checkBox3);
        smallCheckBox = findViewById(R.id.checkBox4);
    }

    public void findGift(View view) {
        //toggle button
        boolean location = toggle.isChecked();

        //spinner
        String relationType = String.valueOf(relation.getSelectedItem());

        //radio buttons
        int price_id = price.getCheckedRadioButtonId();

        //check boxes
        Boolean funny = funnyCheckBox.isChecked();
        Boolean caring = caringCheckBox.isChecked();
        Boolean big = bigCheckBox.isChecked();
        Boolean small = smallCheckBox.isChecked();

        //pick sport
        String selectGift;

        //check radio buttons
        if (price_id == -1) {
            //toast
            Context context = getApplicationContext();
            CharSequence text = "Please select a price level";
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        } else {
            if (location) { //snowing
                if (price_id == R.id.radioButton1) { //cheapest option
                    selectGift = "A coffee mug";
                } else {
                    switch (relationType) {
                        case "parent":
                            selectGift = "A warm hoodie";
                            break;
                        case "sibling":
                            selectGift = "A fluffy toy";
                            break;
                        case "friend":
                            selectGift = "A homemade ornament";
                            break;
                        default:
                            selectGift = "A hug";
                    }
                }
            } else { //not snowing
                if (price_id == R.id.radioButton3) {
                    if (funny) {
                        selectGift = "A ton of socks";
                    } else {
                        selectGift = "A new pair of shoes";
                    }
                } else {
                    switch (relationType) {
                        case "parent":
                            selectGift = "A button up t-shirt";
                            break;
                        case "sibling":
                            selectGift = "A new video game";
                            break;
                        case "friend":
                            selectGift = "A giftcard";
                            break;
                        default:
                            selectGift = "A poster";
                    }
                }
            }

            //text view
            christmasGift.setText(selectGift + " would make a perfect gift");
        }
    }
}

