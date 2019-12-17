package com.example.customlistview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;

public class MyAdapter extends ArrayAdapter<Cars> {
    ArrayList<Cars> carsArray;
    Context context;
    ViewHolder viewholder;

    public MyAdapter(ArrayList<Cars> carsArray,@NonNull Context context) {
        super(context, R.layout.my_row,carsArray);

        this.carsArray=carsArray;
        this.context=context;
    }

    public class ViewHolder{
        TextView car_name;
        ImageView car_image;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        Cars carObj=getItem(position);

        if (convertView==null){
            viewholder= new ViewHolder();
            LayoutInflater layoutInflater = LayoutInflater.from(getContext());
            convertView =layoutInflater.inflate(R.layout.my_row, parent, false);

            viewholder.car_image= convertView.findViewById(R.id.car_image);
            viewholder.car_name= convertView.findViewById(R.id.tv_car_name);

            convertView.setTag(viewholder);
        } else {
            viewholder=(ViewHolder) convertView.getTag();

        }

        viewholder.car_image.setImageResource(carObj.getImage_car());
        viewholder.car_name.setText(carObj.getCar_name());
        return convertView;
    }
}
