package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView.o;
import java.util.Arrays;
import java.util.Comparator;

final class a
{
  private static final ViewGroup.MarginLayoutParams b;
  private LinearLayoutManager a;
  
  static
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
    b = localMarginLayoutParams;
    localMarginLayoutParams.setMargins(0, 0, 0, 0);
  }
  
  a(LinearLayoutManager paramLinearLayoutManager)
  {
    this.a = paramLinearLayoutManager;
  }
  
  private boolean a()
  {
    int i = this.a.getChildCount();
    if (i == 0) {
      return true;
    }
    if (this.a.getOrientation() == 0) {
      j = 1;
    } else {
      j = 0;
    }
    int[][] arrayOfInt = new int[i][2];
    int k = 0;
    while (k < i)
    {
      View localView = this.a.getChildAt(k);
      if (localView != null)
      {
        localObject = localView.getLayoutParams();
        if ((localObject instanceof ViewGroup.MarginLayoutParams)) {
          localObject = (ViewGroup.MarginLayoutParams)localObject;
        } else {
          localObject = b;
        }
        int[] arrayOfInt1 = arrayOfInt[k];
        int m;
        int n;
        if (j != 0)
        {
          m = localView.getLeft();
          n = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
        }
        else
        {
          m = localView.getTop();
          n = ((ViewGroup.MarginLayoutParams)localObject).topMargin;
        }
        arrayOfInt1[0] = (m - n);
        arrayOfInt1 = arrayOfInt[k];
        if (j != 0)
        {
          m = localView.getRight();
          n = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
        }
        else
        {
          m = localView.getBottom();
          n = ((ViewGroup.MarginLayoutParams)localObject).bottomMargin;
        }
        arrayOfInt1[1] = (m + n);
        k++;
      }
      else
      {
        throw new IllegalStateException("null view contained in the view hierarchy");
      }
    }
    Arrays.sort(arrayOfInt, new a());
    for (int j = 1; j < i; j++) {
      if (arrayOfInt[(j - 1)][1] != arrayOfInt[j][0]) {
        return false;
      }
    }
    Object localObject = arrayOfInt[0];
    j = localObject[1];
    k = localObject[0];
    return (k <= 0) && (arrayOfInt[(i - 1)][1] >= j - k);
  }
  
  private boolean b()
  {
    int i = this.a.getChildCount();
    for (int j = 0; j < i; j++) {
      if (c(this.a.getChildAt(j))) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean c(View paramView)
  {
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      LayoutTransition localLayoutTransition = paramView.getLayoutTransition();
      if ((localLayoutTransition != null) && (localLayoutTransition.isChangingLayout())) {
        return true;
      }
      int i = paramView.getChildCount();
      for (int j = 0; j < i; j++) {
        if (c(paramView.getChildAt(j))) {
          return true;
        }
      }
    }
    return false;
  }
  
  boolean d()
  {
    boolean bool1 = a();
    boolean bool2 = true;
    if (((bool1) && (this.a.getChildCount() > 1)) || (!b())) {
      bool2 = false;
    }
    return bool2;
  }
  
  class a
    implements Comparator<int[]>
  {
    a() {}
    
    public int a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
    {
      return paramArrayOfInt1[0] - paramArrayOfInt2[0];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager2.widget.a
 * JD-Core Version:    0.7.0.1
 */