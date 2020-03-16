package com.werb.pickphotoview.adapter;

import android.graphics.Rect;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;

/**
 * Created by wanbo on 2017/1/2.
 */

public class SpaceItemDecoration extends RecyclerView.ItemDecoration {

    private final int space;
    private final int spanCount;

    public SpaceItemDecoration(int space, int spanCount) {
        this.space = space;
        this.spanCount = spanCount;
    }

    @Override
    public void getItemOffsets(@NonNull Rect outRect, @NonNull View view, @NonNull RecyclerView parent, @NonNull RecyclerView.State state) {
        super.getItemOffsets(outRect, view, parent, state);
        outRect.left = space;
        outRect.bottom = space;
        if (parent.getChildLayoutPosition(view) < spanCount) {
            outRect.top = space;
        }
        if((parent.getChildLayoutPosition(view) + 1) % spanCount == 0 ){
            outRect.right = space;
        }
    }
}
