package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

public class d
  extends RecyclerView.n
{
  private static final int[] d = { 16843284 };
  private Drawable a;
  private int b;
  private final Rect c = new Rect();
  
  public d(Context paramContext, int paramInt)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(d);
    paramContext = localTypedArray.getDrawable(0);
    this.a = paramContext;
    if (paramContext == null) {
      Log.w("DividerItem", "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
    }
    localTypedArray.recycle();
    setOrientation(paramInt);
  }
  
  private void d(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    paramCanvas.save();
    boolean bool = paramRecyclerView.getClipToPadding();
    int i = 0;
    int j;
    int k;
    if (bool)
    {
      j = paramRecyclerView.getPaddingTop();
      k = paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom();
      paramCanvas.clipRect(paramRecyclerView.getPaddingLeft(), j, paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight(), k);
    }
    else
    {
      k = paramRecyclerView.getHeight();
      j = 0;
    }
    int m = paramRecyclerView.getChildCount();
    while (i < m)
    {
      View localView = paramRecyclerView.getChildAt(i);
      paramRecyclerView.getLayoutManager().getDecoratedBoundsWithMargins(localView, this.c);
      int n = this.c.right + Math.round(localView.getTranslationX());
      int i1 = this.a.getIntrinsicWidth();
      this.a.setBounds(n - i1, j, n, k);
      this.a.draw(paramCanvas);
      i++;
    }
    paramCanvas.restore();
  }
  
  private void e(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    paramCanvas.save();
    boolean bool = paramRecyclerView.getClipToPadding();
    int i = 0;
    int j;
    int k;
    if (bool)
    {
      j = paramRecyclerView.getPaddingLeft();
      k = paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight();
      paramCanvas.clipRect(j, paramRecyclerView.getPaddingTop(), k, paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom());
    }
    else
    {
      k = paramRecyclerView.getWidth();
      j = 0;
    }
    int m = paramRecyclerView.getChildCount();
    while (i < m)
    {
      View localView = paramRecyclerView.getChildAt(i);
      paramRecyclerView.getDecoratedBoundsWithMargins(localView, this.c);
      int n = this.c.bottom + Math.round(localView.getTranslationY());
      int i1 = this.a.getIntrinsicHeight();
      this.a.setBounds(j, n - i1, k, n);
      this.a.draw(paramCanvas);
      i++;
    }
    paramCanvas.restore();
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.z paramz)
  {
    paramView = this.a;
    if (paramView == null)
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    if (this.b == 1) {
      paramRect.set(0, 0, 0, paramView.getIntrinsicHeight());
    } else {
      paramRect.set(0, 0, paramView.getIntrinsicWidth(), 0);
    }
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.z paramz)
  {
    if ((paramRecyclerView.getLayoutManager() != null) && (this.a != null)) {
      if (this.b == 1) {
        e(paramCanvas, paramRecyclerView);
      } else {
        d(paramCanvas, paramRecyclerView);
      }
    }
  }
  
  public void setDrawable(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      this.a = paramDrawable;
      return;
    }
    throw new IllegalArgumentException("Drawable cannot be null.");
  }
  
  public void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
    }
    this.b = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.d
 * JD-Core Version:    0.7.0.1
 */