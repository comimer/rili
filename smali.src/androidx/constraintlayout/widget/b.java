package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import q.a;

public abstract class b
  extends View
{
  protected int[] a = new int[32];
  protected int b;
  protected Context c;
  protected a d;
  protected boolean e = false;
  protected String f;
  protected String g;
  private View[] h = null;
  protected HashMap<Integer, String> i = new HashMap();
  
  public b(Context paramContext)
  {
    super(paramContext);
    this.c = paramContext;
    m(null);
  }
  
  public b(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.c = paramContext;
    m(paramAttributeSet);
  }
  
  private void d(String paramString)
  {
    if ((paramString != null) && (paramString.length() != 0))
    {
      if (this.c == null) {
        return;
      }
      paramString = paramString.trim();
      Object localObject;
      if ((getParent() instanceof ConstraintLayout)) {
        localObject = (ConstraintLayout)getParent();
      }
      int j = k(paramString);
      if (j != 0)
      {
        this.i.put(Integer.valueOf(j), paramString);
        e(j);
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Could not find id of \"");
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append("\"");
        Log.w("ConstraintHelper", ((StringBuilder)localObject).toString());
      }
    }
  }
  
  private void e(int paramInt)
  {
    if (paramInt == getId()) {
      return;
    }
    int j = this.b;
    int[] arrayOfInt = this.a;
    if (j + 1 > arrayOfInt.length) {
      this.a = Arrays.copyOf(arrayOfInt, arrayOfInt.length * 2);
    }
    arrayOfInt = this.a;
    j = this.b;
    arrayOfInt[j] = paramInt;
    this.b = (j + 1);
  }
  
  private void f(String paramString)
  {
    if ((paramString != null) && (paramString.length() != 0))
    {
      if (this.c == null) {
        return;
      }
      String str = paramString.trim();
      paramString = null;
      if ((getParent() instanceof ConstraintLayout)) {
        paramString = (ConstraintLayout)getParent();
      }
      if (paramString == null)
      {
        Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
        return;
      }
      int j = paramString.getChildCount();
      for (int k = 0; k < j; k++)
      {
        View localView = paramString.getChildAt(k);
        Object localObject = localView.getLayoutParams();
        if (((localObject instanceof ConstraintLayout.b)) && (str.equals(((ConstraintLayout.b)localObject).c0))) {
          if (localView.getId() == -1)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("to use ConstraintTag view ");
            ((StringBuilder)localObject).append(localView.getClass().getSimpleName());
            ((StringBuilder)localObject).append(" must have an ID");
            Log.w("ConstraintHelper", ((StringBuilder)localObject).toString());
          }
          else
          {
            e(localView.getId());
          }
        }
      }
    }
  }
  
  private int j(ConstraintLayout paramConstraintLayout, String paramString)
  {
    if ((paramString != null) && (paramConstraintLayout != null))
    {
      Resources localResources = this.c.getResources();
      if (localResources == null) {
        return 0;
      }
      int j = paramConstraintLayout.getChildCount();
      for (int k = 0; k < j; k++)
      {
        View localView = paramConstraintLayout.getChildAt(k);
        Object localObject;
        if (localView.getId() != -1) {
          localObject = null;
        }
        try
        {
          String str = localResources.getResourceEntryName(localView.getId());
          localObject = str;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          label76:
          break label76;
        }
        if (paramString.equals(localObject)) {
          return localView.getId();
        }
      }
    }
    else
    {
      return 0;
    }
  }
  
  private int k(String paramString)
  {
    ConstraintLayout localConstraintLayout;
    if ((getParent() instanceof ConstraintLayout)) {
      localConstraintLayout = (ConstraintLayout)getParent();
    } else {
      localConstraintLayout = null;
    }
    boolean bool = isInEditMode();
    int j = 0;
    int k = j;
    if (bool)
    {
      k = j;
      if (localConstraintLayout != null)
      {
        Object localObject = localConstraintLayout.f(0, paramString);
        k = j;
        if ((localObject instanceof Integer)) {
          k = ((Integer)localObject).intValue();
        }
      }
    }
    j = k;
    if (k == 0)
    {
      j = k;
      if (localConstraintLayout != null) {
        j = j(localConstraintLayout, paramString);
      }
    }
    k = j;
    if (j == 0) {}
    try
    {
      k = i.class.getField(paramString).getInt(null);
      j = k;
      if (k == 0) {
        j = this.c.getResources().getIdentifier(paramString, "id", this.c.getPackageName());
      }
      return j;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        k = j;
      }
    }
  }
  
  protected void g()
  {
    ViewParent localViewParent = getParent();
    if ((localViewParent != null) && ((localViewParent instanceof ConstraintLayout))) {
      h((ConstraintLayout)localViewParent);
    }
  }
  
  public int[] getReferencedIds()
  {
    return Arrays.copyOf(this.a, this.b);
  }
  
  protected void h(ConstraintLayout paramConstraintLayout)
  {
    int j = getVisibility();
    float f1 = getElevation();
    for (int k = 0; k < this.b; k++)
    {
      View localView = paramConstraintLayout.h(this.a[k]);
      if (localView != null)
      {
        localView.setVisibility(j);
        if (f1 > 0.0F) {
          localView.setTranslationZ(localView.getTranslationZ() + f1);
        }
      }
    }
  }
  
  protected void i(ConstraintLayout paramConstraintLayout) {}
  
  protected View[] l(ConstraintLayout paramConstraintLayout)
  {
    View[] arrayOfView = this.h;
    if ((arrayOfView == null) || (arrayOfView.length != this.b)) {
      this.h = new View[this.b];
    }
    for (int j = 0; j < this.b; j++)
    {
      int k = this.a[j];
      this.h[j] = paramConstraintLayout.h(k);
    }
    return this.h;
  }
  
  protected void m(AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, j.n1);
      int j = paramAttributeSet.getIndexCount();
      for (int k = 0; k < j; k++)
      {
        int m = paramAttributeSet.getIndex(k);
        String str;
        if (m == j.G1)
        {
          str = paramAttributeSet.getString(m);
          this.f = str;
          setIds(str);
        }
        else if (m == j.H1)
        {
          str = paramAttributeSet.getString(m);
          this.g = str;
          setReferenceTags(str);
        }
      }
      paramAttributeSet.recycle();
    }
  }
  
  public void n(ConstraintWidget paramConstraintWidget, boolean paramBoolean) {}
  
  public void o(ConstraintLayout paramConstraintLayout) {}
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = this.f;
    if (str != null) {
      setIds(str);
    }
    str = this.g;
    if (str != null) {
      setReferenceTags(str);
    }
  }
  
  public void onDraw(Canvas paramCanvas) {}
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.e) {
      super.onMeasure(paramInt1, paramInt2);
    } else {
      setMeasuredDimension(0, 0);
    }
  }
  
  public void p(ConstraintLayout paramConstraintLayout) {}
  
  public void q(ConstraintLayout paramConstraintLayout) {}
  
  public void r(ConstraintLayout paramConstraintLayout)
  {
    if (isInEditMode()) {
      setIds(this.f);
    }
    Object localObject = this.d;
    if (localObject == null) {
      return;
    }
    ((a)localObject).a();
    for (int j = 0; j < this.b; j++)
    {
      int k = this.a[j];
      View localView = paramConstraintLayout.h(k);
      localObject = localView;
      if (localView == null)
      {
        String str = (String)this.i.get(Integer.valueOf(k));
        k = j(paramConstraintLayout, str);
        localObject = localView;
        if (k != 0)
        {
          this.a[j] = k;
          this.i.put(Integer.valueOf(k), str);
          localObject = paramConstraintLayout.h(k);
        }
      }
      if (localObject != null) {
        this.d.b(paramConstraintLayout.i((View)localObject));
      }
    }
    this.d.c(paramConstraintLayout.c);
  }
  
  public void s()
  {
    if (this.d == null) {
      return;
    }
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    if ((localLayoutParams instanceof ConstraintLayout.b)) {
      ((ConstraintLayout.b)localLayoutParams).v0 = ((ConstraintWidget)this.d);
    }
  }
  
  protected void setIds(String paramString)
  {
    this.f = paramString;
    if (paramString == null) {
      return;
    }
    int j = 0;
    this.b = 0;
    for (;;)
    {
      int k = paramString.indexOf(',', j);
      if (k == -1)
      {
        d(paramString.substring(j));
        return;
      }
      d(paramString.substring(j, k));
      j = k + 1;
    }
  }
  
  protected void setReferenceTags(String paramString)
  {
    this.g = paramString;
    if (paramString == null) {
      return;
    }
    int j = 0;
    this.b = 0;
    for (;;)
    {
      int k = paramString.indexOf(',', j);
      if (k == -1)
      {
        f(paramString.substring(j));
        return;
      }
      f(paramString.substring(j, k));
      j = k + 1;
    }
  }
  
  public void setReferencedIds(int[] paramArrayOfInt)
  {
    this.f = null;
    int j = 0;
    this.b = 0;
    while (j < paramArrayOfInt.length)
    {
      e(paramArrayOfInt[j]);
      j++;
    }
  }
  
  public void setTag(int paramInt, Object paramObject)
  {
    super.setTag(paramInt, paramObject);
    if ((paramObject == null) && (this.f == null)) {
      e(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.b
 * JD-Core Version:    0.7.0.1
 */