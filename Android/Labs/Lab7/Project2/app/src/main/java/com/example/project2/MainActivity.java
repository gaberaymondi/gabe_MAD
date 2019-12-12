package com.example.project2;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Button;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private Button button;
    private Spinner weekday;
    private RadioGroup selectSeason;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //time = findViewById(R.id.seekBar);
        weekday = findViewById(R.id.spinner);
        selectSeason = findViewById(R.id.radioGroup);
        
        button = findViewById(R.id.button);
        //source: https://www.youtube.com/watch?v=bgIUdb-7Rqo
        button.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                openActivity2();
            }
        });
    }

    public void openActivity2(){

//        //textview
//        TextView song = findViewById(R.id.songTitle);
//        song.setText("Marvin's Room");
//
//        TextView rapper = findViewById(R.id.artist);
//        rapper.setText("Drake");
//
//        //imageview
//        ImageView trophy = findViewById(R.id.albumArtwork);
//        trophy.setImageResource(R.drawable.takecare);
//
        Intent intent = new Intent(this,Activity2.class);
        startActivity(intent);
        
//        String dayofWeek = String.valueOf(weekday.getSelectedItem());
//        String songTitle;
//        int currentSeason = selectSeason.getCheckedRadioButtonId();
//
//        //check radio buttons
//        if (currentSeason == -1) {
//            //toast
//            Context context = getApplicationContext();
//            CharSequence text = "Please select a season";
//            int duration = Toast.LENGTH_SHORT;
//
//            Toast toast = Toast.makeText(context, text, duration);
//            toast.show();
//        } else {
//            if (currentSeason == R.id.radioButton1) { //cheapest option
//                selectSong = "Run it";
//            } else {
//                switch (dayofWeek) {
//                    case "Sunday":
//                        selectTitle = "Electric Feel";
//                        break;
//                    case "Monday":
//                        selectTitle = "Pumped up kicks";
//                        break;
//                    case "Friday":
//                        selectTitle = "Power Trip";
//                        break;
//                    default:
//                        selecttitle = "Slide";
//                }
//            }
//
//        }

    }
    //ublic void getsongTitle(){
        //return songtitle;
    //}

}
