package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.StaticLayout.Builder;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.a0;
import d.j;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

class x
{
  private static final RectF l = new RectF();
  @SuppressLint({"BanConcurrentHashMap"})
  private static ConcurrentHashMap<String, Method> m = new ConcurrentHashMap();
  @SuppressLint({"BanConcurrentHashMap"})
  private static ConcurrentHashMap<String, Field> n = new ConcurrentHashMap();
  private int a = 0;
  private boolean b = false;
  private float c = -1.0F;
  private float d = -1.0F;
  private float e = -1.0F;
  private int[] f = new int[0];
  private boolean g = false;
  private TextPaint h;
  private final TextView i;
  private final Context j;
  private final c k;
  
  x(TextView paramTextView)
  {
    this.i = paramTextView;
    this.j = paramTextView.getContext();
    if (Build.VERSION.SDK_INT >= 29) {
      this.k = new b();
    } else {
      this.k = new a();
    }
  }
  
  private void A(float paramFloat1, float paramFloat2, float paramFloat3)
    throws IllegalArgumentException
  {
    if (paramFloat1 > 0.0F)
    {
      if (paramFloat2 > paramFloat1)
      {
        if (paramFloat3 > 0.0F)
        {
          this.a = 1;
          this.d = paramFloat1;
          this.e = paramFloat2;
          this.c = paramFloat3;
          this.g = false;
          return;
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("The auto-size step granularity (");
        localStringBuilder.append(paramFloat3);
        localStringBuilder.append("px) is less or equal to (0px)");
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Maximum auto-size text size (");
      localStringBuilder.append(paramFloat2);
      localStringBuilder.append("px) is less or equal to minimum auto-size text size (");
      localStringBuilder.append(paramFloat1);
      localStringBuilder.append("px)");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Minimum auto-size text size (");
    localStringBuilder.append(paramFloat1);
    localStringBuilder.append("px) is less or equal to (0px)");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  private int[] b(int[] paramArrayOfInt)
  {
    int i1 = paramArrayOfInt.length;
    if (i1 == 0) {
      return paramArrayOfInt;
    }
    Arrays.sort(paramArrayOfInt);
    ArrayList localArrayList = new ArrayList();
    int i2 = 0;
    for (int i3 = 0; i3 < i1; i3++)
    {
      int i4 = paramArrayOfInt[i3];
      if ((i4 > 0) && (Collections.binarySearch(localArrayList, Integer.valueOf(i4)) < 0)) {
        localArrayList.add(Integer.valueOf(i4));
      }
    }
    if (i1 == localArrayList.size()) {
      return paramArrayOfInt;
    }
    i1 = localArrayList.size();
    paramArrayOfInt = new int[i1];
    for (i3 = i2; i3 < i1; i3++) {
      paramArrayOfInt[i3] = ((Integer)localArrayList.get(i3)).intValue();
    }
    return paramArrayOfInt;
  }
  
  private void c()
  {
    this.a = 0;
    this.d = -1.0F;
    this.e = -1.0F;
    this.c = -1.0F;
    this.f = new int[0];
    this.b = false;
  }
  
  private StaticLayout e(CharSequence paramCharSequence, Layout.Alignment paramAlignment, int paramInt1, int paramInt2)
  {
    paramCharSequence = StaticLayout.Builder.obtain(paramCharSequence, 0, paramCharSequence.length(), this.h, paramInt1);
    paramAlignment = paramCharSequence.setAlignment(paramAlignment).setLineSpacing(this.i.getLineSpacingExtra(), this.i.getLineSpacingMultiplier()).setIncludePad(this.i.getIncludeFontPadding()).setBreakStrategy(this.i.getBreakStrategy()).setHyphenationFrequency(this.i.getHyphenationFrequency());
    paramInt1 = paramInt2;
    if (paramInt2 == -1) {
      paramInt1 = 2147483647;
    }
    paramAlignment.setMaxLines(paramInt1);
    try
    {
      this.k.a(paramCharSequence, this.i);
    }
    catch (ClassCastException paramAlignment)
    {
      Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
    }
    return paramCharSequence.build();
  }
  
  private int f(RectF paramRectF)
  {
    int i1 = this.f.length;
    if (i1 != 0)
    {
      int i2 = 0;
      int i3 = 1;
      i1--;
      while (i3 <= i1)
      {
        i2 = (i3 + i1) / 2;
        if (y(this.f[i2], paramRectF))
        {
          int i4 = i2 + 1;
          i2 = i3;
          i3 = i4;
        }
        else
        {
          i2--;
          i1 = i2;
        }
      }
      return this.f[i2];
    }
    throw new IllegalStateException("No available text sizes to choose from.");
  }
  
  private static Method l(String paramString)
  {
    try
    {
      Method localMethod = (Method)m.get(paramString);
      localObject = localMethod;
      if (localMethod == null)
      {
        localMethod = TextView.class.getDeclaredMethod(paramString, new Class[0]);
        localObject = localMethod;
        if (localMethod != null)
        {
          localMethod.setAccessible(true);
          m.put(paramString, localMethod);
          localObject = localMethod;
        }
      }
      return localObject;
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Failed to retrieve TextView#");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append("() method");
      Log.w("ACTVAutoSizeHelper", ((StringBuilder)localObject).toString(), localException);
    }
    return null;
  }
  
  /* Error */
  static <T> T n(Object paramObject, String paramString, T paramT)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 284	androidx/appcompat/widget/x:l	(Ljava/lang/String;)Ljava/lang/reflect/Method;
    //   4: aload_0
    //   5: iconst_0
    //   6: anewarray 4	java/lang/Object
    //   9: invokevirtual 288	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   12: astore_0
    //   13: aload_0
    //   14: astore_2
    //   15: goto +49 -> 64
    //   18: astore_0
    //   19: goto +47 -> 66
    //   22: astore_0
    //   23: new 98	java/lang/StringBuilder
    //   26: astore_3
    //   27: aload_3
    //   28: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   31: aload_3
    //   32: ldc_w 290
    //   35: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: pop
    //   39: aload_3
    //   40: aload_1
    //   41: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: aload_3
    //   46: ldc_w 278
    //   49: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: pop
    //   53: ldc 228
    //   55: aload_3
    //   56: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: aload_0
    //   60: invokestatic 281	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   63: pop
    //   64: aload_2
    //   65: areturn
    //   66: aload_0
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	paramObject	Object
    //   0	68	1	paramString	String
    //   0	68	2	paramT	T
    //   26	30	3	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   0	13	18	finally
    //   23	64	18	finally
    //   0	13	22	java/lang/Exception
  }
  
  private void t(float paramFloat)
  {
    if (paramFloat != this.i.getPaint().getTextSize())
    {
      this.i.getPaint().setTextSize(paramFloat);
      boolean bool = this.i.isInLayout();
      if (this.i.getLayout() != null)
      {
        this.b = false;
        try
        {
          Method localMethod = l("nullLayouts");
          if (localMethod != null) {
            localMethod.invoke(this.i, new Object[0]);
          }
        }
        catch (Exception localException)
        {
          Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", localException);
        }
        if (!bool) {
          this.i.requestLayout();
        } else {
          this.i.forceLayout();
        }
        this.i.invalidate();
      }
    }
  }
  
  private boolean v()
  {
    boolean bool = z();
    int i1 = 0;
    if ((bool) && (this.a == 1))
    {
      if ((!this.g) || (this.f.length == 0))
      {
        int i2 = (int)Math.floor((this.e - this.d) / this.c) + 1;
        int[] arrayOfInt = new int[i2];
        while (i1 < i2)
        {
          arrayOfInt[i1] = Math.round(this.d + i1 * this.c);
          i1++;
        }
        this.f = b(arrayOfInt);
      }
      this.b = true;
    }
    else
    {
      this.b = false;
    }
    return this.b;
  }
  
  private void w(TypedArray paramTypedArray)
  {
    int i1 = paramTypedArray.length();
    int[] arrayOfInt = new int[i1];
    if (i1 > 0)
    {
      for (int i2 = 0; i2 < i1; i2++) {
        arrayOfInt[i2] = paramTypedArray.getDimensionPixelSize(i2, -1);
      }
      this.f = b(arrayOfInt);
      x();
    }
  }
  
  private boolean x()
  {
    int[] arrayOfInt = this.f;
    int i1 = arrayOfInt.length;
    boolean bool;
    if (i1 > 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.g = bool;
    if (bool)
    {
      this.a = 1;
      this.d = arrayOfInt[0];
      this.e = arrayOfInt[(i1 - 1)];
      this.c = -1.0F;
    }
    return bool;
  }
  
  private boolean y(int paramInt, RectF paramRectF)
  {
    Object localObject1 = this.i.getText();
    Object localObject2 = this.i.getTransformationMethod();
    Object localObject3 = localObject1;
    if (localObject2 != null)
    {
      localObject2 = ((TransformationMethod)localObject2).getTransformation((CharSequence)localObject1, this.i);
      localObject3 = localObject1;
      if (localObject2 != null) {
        localObject3 = localObject2;
      }
    }
    int i1 = this.i.getMaxLines();
    m(paramInt);
    localObject1 = d(localObject3, (Layout.Alignment)n(this.i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(paramRectF.right), i1);
    if ((i1 != -1) && ((((StaticLayout)localObject1).getLineCount() > i1) || (((Layout)localObject1).getLineEnd(((StaticLayout)localObject1).getLineCount() - 1) != localObject3.length()))) {
      return false;
    }
    return ((Layout)localObject1).getHeight() <= paramRectF.bottom;
  }
  
  private boolean z()
  {
    return this.i instanceof h ^ true;
  }
  
  void a()
  {
    if (!o()) {
      return;
    }
    if (this.b)
    {
      if ((this.i.getMeasuredHeight() > 0) && (this.i.getMeasuredWidth() > 0))
      {
        int i1;
        if (this.k.b(this.i)) {
          i1 = 1048576;
        } else {
          i1 = this.i.getMeasuredWidth() - this.i.getTotalPaddingLeft() - this.i.getTotalPaddingRight();
        }
        int i2 = this.i.getHeight() - this.i.getCompoundPaddingBottom() - this.i.getCompoundPaddingTop();
        if ((i1 > 0) && (i2 > 0)) {
          synchronized (l)
          {
            ???.setEmpty();
            ???.right = i1;
            ???.bottom = i2;
            float f1 = f(???);
            if (f1 != this.i.getTextSize()) {
              u(0, f1);
            }
          }
        }
      }
      return;
    }
    this.b = true;
  }
  
  StaticLayout d(CharSequence paramCharSequence, Layout.Alignment paramAlignment, int paramInt1, int paramInt2)
  {
    return e(paramCharSequence, paramAlignment, paramInt1, paramInt2);
  }
  
  int g()
  {
    return Math.round(this.e);
  }
  
  int h()
  {
    return Math.round(this.d);
  }
  
  int i()
  {
    return Math.round(this.c);
  }
  
  int[] j()
  {
    return this.f;
  }
  
  int k()
  {
    return this.a;
  }
  
  void m(int paramInt)
  {
    TextPaint localTextPaint = this.h;
    if (localTextPaint == null) {
      this.h = new TextPaint();
    } else {
      localTextPaint.reset();
    }
    this.h.set(this.i.getPaint());
    this.h.setTextSize(paramInt);
  }
  
  boolean o()
  {
    boolean bool;
    if ((z()) && (this.a != 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void p(AttributeSet paramAttributeSet, int paramInt)
  {
    Object localObject = this.j;
    int[] arrayOfInt = j.g0;
    localObject = ((Context)localObject).obtainStyledAttributes(paramAttributeSet, arrayOfInt, paramInt, 0);
    TextView localTextView = this.i;
    a0.j0(localTextView, localTextView.getContext(), arrayOfInt, paramAttributeSet, (TypedArray)localObject, paramInt, 0);
    paramInt = j.l0;
    if (((TypedArray)localObject).hasValue(paramInt)) {
      this.a = ((TypedArray)localObject).getInt(paramInt, 0);
    }
    paramInt = j.k0;
    float f1;
    if (((TypedArray)localObject).hasValue(paramInt)) {
      f1 = ((TypedArray)localObject).getDimension(paramInt, -1.0F);
    } else {
      f1 = -1.0F;
    }
    paramInt = j.i0;
    float f2;
    if (((TypedArray)localObject).hasValue(paramInt)) {
      f2 = ((TypedArray)localObject).getDimension(paramInt, -1.0F);
    } else {
      f2 = -1.0F;
    }
    paramInt = j.h0;
    float f3;
    if (((TypedArray)localObject).hasValue(paramInt)) {
      f3 = ((TypedArray)localObject).getDimension(paramInt, -1.0F);
    } else {
      f3 = -1.0F;
    }
    paramInt = j.j0;
    if (((TypedArray)localObject).hasValue(paramInt))
    {
      paramInt = ((TypedArray)localObject).getResourceId(paramInt, 0);
      if (paramInt > 0)
      {
        paramAttributeSet = ((TypedArray)localObject).getResources().obtainTypedArray(paramInt);
        w(paramAttributeSet);
        paramAttributeSet.recycle();
      }
    }
    ((TypedArray)localObject).recycle();
    if (z())
    {
      if (this.a == 1)
      {
        if (!this.g)
        {
          paramAttributeSet = this.j.getResources().getDisplayMetrics();
          float f4 = f2;
          if (f2 == -1.0F) {
            f4 = TypedValue.applyDimension(2, 12.0F, paramAttributeSet);
          }
          f2 = f3;
          if (f3 == -1.0F) {
            f2 = TypedValue.applyDimension(2, 112.0F, paramAttributeSet);
          }
          f3 = f1;
          if (f1 == -1.0F) {
            f3 = 1.0F;
          }
          A(f4, f2, f3);
        }
        v();
      }
    }
    else {
      this.a = 0;
    }
  }
  
  void q(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IllegalArgumentException
  {
    if (z())
    {
      DisplayMetrics localDisplayMetrics = this.j.getResources().getDisplayMetrics();
      A(TypedValue.applyDimension(paramInt4, paramInt1, localDisplayMetrics), TypedValue.applyDimension(paramInt4, paramInt2, localDisplayMetrics), TypedValue.applyDimension(paramInt4, paramInt3, localDisplayMetrics));
      if (v()) {
        a();
      }
    }
  }
  
  void r(int[] paramArrayOfInt, int paramInt)
    throws IllegalArgumentException
  {
    if (z())
    {
      int i1 = paramArrayOfInt.length;
      int i2 = 0;
      if (i1 > 0)
      {
        int[] arrayOfInt = new int[i1];
        Object localObject;
        if (paramInt == 0)
        {
          localObject = Arrays.copyOf(paramArrayOfInt, i1);
        }
        else
        {
          DisplayMetrics localDisplayMetrics = this.j.getResources().getDisplayMetrics();
          for (;;)
          {
            localObject = arrayOfInt;
            if (i2 >= i1) {
              break;
            }
            arrayOfInt[i2] = Math.round(TypedValue.applyDimension(paramInt, paramArrayOfInt[i2], localDisplayMetrics));
            i2++;
          }
        }
        this.f = b((int[])localObject);
        if (!x())
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("None of the preset sizes is valid: ");
          ((StringBuilder)localObject).append(Arrays.toString(paramArrayOfInt));
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
      }
      else
      {
        this.g = false;
      }
      if (v()) {
        a();
      }
    }
  }
  
  void s(int paramInt)
  {
    if (z()) {
      if (paramInt != 0)
      {
        Object localObject;
        if (paramInt == 1)
        {
          localObject = this.j.getResources().getDisplayMetrics();
          A(TypedValue.applyDimension(2, 12.0F, (DisplayMetrics)localObject), TypedValue.applyDimension(2, 112.0F, (DisplayMetrics)localObject), 1.0F);
          if (v()) {
            a();
          }
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Unknown auto-size text type: ");
          ((StringBuilder)localObject).append(paramInt);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
      }
      else
      {
        c();
      }
    }
  }
  
  void u(int paramInt, float paramFloat)
  {
    Object localObject = this.j;
    if (localObject == null) {
      localObject = Resources.getSystem();
    } else {
      localObject = ((Context)localObject).getResources();
    }
    t(TypedValue.applyDimension(paramInt, paramFloat, ((Resources)localObject).getDisplayMetrics()));
  }
  
  private static class a
    extends x.c
  {
    void a(StaticLayout.Builder paramBuilder, TextView paramTextView)
    {
      paramBuilder.setTextDirection((TextDirectionHeuristic)x.n(paramTextView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
    }
  }
  
  private static class b
    extends x.a
  {
    void a(StaticLayout.Builder paramBuilder, TextView paramTextView)
    {
      paramBuilder.setTextDirection(z.a(paramTextView));
    }
    
    boolean b(TextView paramTextView)
    {
      return y.a(paramTextView);
    }
  }
  
  private static class c
  {
    void a(StaticLayout.Builder paramBuilder, TextView paramTextView)
    {
      throw null;
    }
    
    boolean b(TextView paramTextView)
    {
      return ((Boolean)x.n(paramTextView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.x
 * JD-Core Version:    0.7.0.1
 */