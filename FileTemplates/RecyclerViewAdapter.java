#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;

#parse("File Header.java")
public class ${NAME} extends RecyclerView.Adapter<${NAME}.${VIEWHOLDER_CLASS}> {

    private List<${ITEM_CLASS}> items;
   
    public ${NAME}(List<${ITEM_CLASS}> items) {
        this.items = items;
    }
    
    @NonNull
    @Override
    public ${VIEWHOLDER_CLASS} onCreateViewHolder(ViewGroup parent,
                                             int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.${LAYOUT_RES_ID}, parent, false);
        return new ${VIEWHOLDER_CLASS}(itemView);
    }

    @Override
    public void onBindViewHolder(${VIEWHOLDER_CLASS} holder, int position) {
        ${ITEM_CLASS} item = items.get(position);
        
    }

    @Override
    public int getItemCount() {
        if (items == null){
            return 0;
        }
        return items.size();
    }
    
    public class ${VIEWHOLDER_CLASS} extends RecyclerView.ViewHolder {
    
        public ${VIEWHOLDER_CLASS}(View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);   
        }
    }
}