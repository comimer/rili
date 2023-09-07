package com.miui.calendar.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.DynamicDrawableSpan;
import android.text.style.ImageSpan;
import android.text.style.RelativeSizeSpan;
import android.util.TypedValue;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.o;
import com.android.calendar.common.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import x4.d;

@Metadata(bv={}, d1={""}, d2={"", "height", "Lkotlin/u;", "J0", "s", "", "isFling", "K0", "t0", "expanding", "M0", "w0", "isDown", "O0", "expand", "L0", "u0", "state", "N0", "v0", "Landroid/content/res/Resources;", "res", "color", "Landroid/graphics/Bitmap;", "m", "size", "n", "isStroke", "p", "isNeedOutside", "r", "width", "borderColor", "fillColor", "L", "Landroid/content/Context;", "context", "Landroid/view/View;", "view", "l0", "D0", "", "text", "fontSizePX", "bold", "y", "month", "H", "resNum", "Ljava/util/ArrayList;", "z0", "A0", "", "values", "minutes", "M", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "y0", "Landroid/widget/TextView;", "textView", "tag", "tagTextSize", "tagTextColor", "tagBgColor", "d", "", "tags", "", "tagBgColors", "e", "(Landroid/content/Context;Landroid/widget/TextView;[Ljava/lang/String;II[I)V", "f", "", "timeInMillis", "q0", "weekNum", "P", "Q", "", "R", "X", "S", "W", "itemCount", "T", "U", "V", "J", "o0", "m0", "n0", "r0", "I", "Z", "Y", "j0", "C", "h0", "i0", "isBigFont", "E", "F", "O", "N", "bindToGrandparent", "left", "top", "right", "bottom", "k", "B0", "tagView", "tagText", "tagTextBgColor", "hasIcon", "isAd", "G0", "stringResId", "tagTextSizePx", "days", "gravity", "paddingTop", "interval", "F0", "tagTextSizeSp", "E0", "maxLength", "toasterStrId", "Landroid/text/InputFilter;", "i", "(Landroid/content/Context;II)[Landroid/text/InputFilter;", "maxEms", "H0", "currentColor", "destColor", "progress", "g", "K", "t", "s0", "Landroid/graphics/Typeface;", "typeface", "textSize", "h", "A", "B", "g0", "b0", "a0", "G", "x", "w", "viewType", "u", "v", "z", "f0", "c0", "e0", "d0", "k0", "p0", "", "duration", "I0", "a", "Ljava/lang/String;", "TAG", "kotlin.jvm.PlatformType", "b", "Landroid/graphics/Typeface;", "D", "()Landroid/graphics/Typeface;", "miuiNormal", "c", "getMiuiBOLD", "miuiBOLD", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "paint", "Ljava/util/HashMap;", "", "Ljava/util/HashMap;", "sListScrollPositions", "sCircleBitmapCache", "[I", "sMonthsMedium", "sMonthPanelExpanded", "sMonthPanelPagerState", "j", "sHomeFlingStatus", "sCurrentMonthViewHeight", "l", "sMonthViewFullDown", "sMonthPanelExpanding", "x0", "()Z", "isRTL", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class x0
{
  private static final String a = "Cal:D:UiUtils";
  private static final Typeface b = Typeface.create("miui", 0);
  private static final Typeface c = Typeface.create("miui", 1);
  private static final Paint d = new Paint();
  private static final HashMap<String, Object> e = new HashMap();
  private static final HashMap<Integer, Bitmap> f = new HashMap();
  private static final int[] g = { 2131886960, 2131886959, 2131886963, 2131886956, 2131886964, 2131886962, 2131886961, 2131886957, 2131886967, 2131886966, 2131886965, 2131886958 };
  private static boolean h = true;
  private static int i;
  private static boolean j;
  private static int k;
  private static boolean l;
  private static boolean m;
  
  public static final int A(Context paramContext)
  {
    r.f(paramContext, "context");
    return paramContext.getResources().getDimensionPixelSize(2131165939) + paramContext.getResources().getDimensionPixelSize(2131165955);
  }
  
  public static final ArrayList<String> A0(Context paramContext)
  {
    r.f(paramContext, "context");
    String str1 = paramContext.getResources().getString(2131887763);
    r.e(str1, "context.resources.getStr…der_minutes_labels_hours)");
    String str2 = paramContext.getResources().getString(2131887762);
    r.e(str2, "context.resources.getStr…nder_minutes_labels_days)");
    paramContext = new ArrayList(5);
    Object localObject = kotlin.jvm.internal.z.a;
    localObject = String.format(str1, Arrays.copyOf(new Object[] { Integer.valueOf(3) }, 1));
    r.e(localObject, "format(format, *args)");
    paramContext.add(localObject);
    localObject = String.format(str1, Arrays.copyOf(new Object[] { Integer.valueOf(4) }, 1));
    r.e(localObject, "format(format, *args)");
    paramContext.add(localObject);
    localObject = String.format(str1, Arrays.copyOf(new Object[] { Integer.valueOf(5) }, 1));
    r.e(localObject, "format(format, *args)");
    paramContext.add(localObject);
    str1 = String.format(str1, Arrays.copyOf(new Object[] { Integer.valueOf(6) }, 1));
    r.e(str1, "format(format, *args)");
    paramContext.add(str1);
    str2 = String.format(str2, Arrays.copyOf(new Object[] { Integer.valueOf(1) }, 1));
    r.e(str2, "format(format, *args)");
    paramContext.add(str2);
    return paramContext;
  }
  
  public static final int B(Context paramContext)
  {
    r.f(paramContext, "context");
    return paramContext.getResources().getDimensionPixelSize(2131165939);
  }
  
  public static final void B0(View paramView, boolean paramBoolean)
  {
    View localView = null;
    if (paramView != null)
    {
      paramView = paramView.getParent();
      if (paramView != null)
      {
        paramView = (View)paramView;
        break label25;
      }
    }
    paramView = null;
    label25:
    if (paramView == null)
    {
      z.m(a, "removeExpandedTouchArea(): parent is null");
      return;
    }
    ViewParent localViewParent = paramView.getParent();
    if (localViewParent != null) {
      localView = (View)localViewParent;
    }
    if ((paramBoolean) && (localView == null))
    {
      z.m(a, "removeExpandedTouchArea(): bindToGrandparent is true but grandParent is null");
      return;
    }
    paramView.post(new w0(paramBoolean, localView, paramView));
  }
  
  public static final float C(Context paramContext)
  {
    r.f(paramContext, "context");
    float f1;
    if ((!DeviceUtils.O(paramContext)) && (Utils.t(paramContext) == 3))
    {
      f1 = O(paramContext, 284.0F);
    }
    else
    {
      f1 = g0(paramContext);
      f1 = h0(paramContext) + f1;
    }
    return f1;
  }
  
  private static final void C0(boolean paramBoolean, View paramView1, View paramView2)
  {
    if (paramBoolean)
    {
      if (paramView1 != null) {
        paramView1.setTouchDelegate(null);
      }
    }
    else {
      paramView2.setTouchDelegate(null);
    }
  }
  
  public static final Typeface D()
  {
    return b;
  }
  
  public static final void D0(Context paramContext, View paramView)
  {
    if ((paramContext != null) && (paramView != null))
    {
      paramContext = paramContext.getSystemService("input_method");
      r.d(paramContext, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
      ((InputMethodManager)paramContext).showSoftInput(paramView, 1);
    }
  }
  
  public static final float E(Context paramContext, boolean paramBoolean)
  {
    r.f(paramContext, "context");
    float f1;
    if (paramBoolean) {
      f1 = O(paramContext, 639.0F);
    } else if (m0(paramContext)) {
      f1 = O(paramContext, 368.0F);
    } else {
      f1 = O(paramContext, 430.0F);
    }
    return f1;
  }
  
  public static final void E0(Context paramContext, TextView paramTextView, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5)
  {
    r.f(paramContext, "context");
    r.f(paramTextView, "textView");
    F0(paramContext, paramTextView, paramInt1, paramInt2, paramFloat, paramInt3, paramInt4, 0, paramInt5);
  }
  
  public static final float F(Context paramContext, boolean paramBoolean)
  {
    r.f(paramContext, "context");
    float f1;
    if (paramBoolean) {
      f1 = O(paramContext, 459.0F);
    } else {
      f1 = O(paramContext, 308.0F);
    }
    return f1;
  }
  
  public static final void F0(Context paramContext, TextView paramTextView, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    r.f(paramContext, "context");
    r.f(paramTextView, "textView");
    String str1 = paramContext.getResources().getQuantityString(paramInt1, paramInt3, new Object[] { Integer.valueOf(paramInt3) });
    r.e(str1, "context.resources.getQua…(stringResId, days, days)");
    String str2 = String.valueOf(paramInt3);
    paramInt1 = k.U(str1, str2, 0, false, 6, null);
    Object localObject = null;
    if (paramInt1 > 0)
    {
      paramContext = str1.substring(0, paramInt1);
      r.e(paramContext, "this as java.lang.String…ing(startIndex, endIndex)");
      paramContext = new d(paramContext, paramInt2, paramFloat, 0).y(paramInt5).w(paramInt4);
    }
    else
    {
      paramContext = null;
    }
    if (str2.length() + paramInt1 < str1.length())
    {
      localObject = str1.substring(paramInt1 + str2.length());
      r.e(localObject, "this as java.lang.String).substring(startIndex)");
      localObject = new d((String)localObject, paramInt2, paramFloat, 0).y(paramInt5).x(paramInt6).z().w(paramInt4);
    }
    paramTextView.setText(new u4.a().c(paramContext).b(str2).c((x4.a)localObject).d());
  }
  
  public static final int G(Context paramContext)
  {
    r.f(paramContext, "context");
    int n;
    if ((Utils.t(paramContext) == 3) && (!DeviceUtils.O(paramContext))) {
      n = (int)O(paramContext, 168.0F);
    } else {
      n = 0;
    }
    return n;
  }
  
  public static final void G0(Context paramContext, TextView paramTextView1, TextView paramTextView2, String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2)
  {
    r.f(paramContext, "context");
    r.f(paramTextView1, "textView");
    r.f(paramTextView2, "tagView");
    r.f(paramString1, "tagText");
    r.f(paramString2, "tagTextColor");
    r.f(paramString3, "tagTextBgColor");
    if (TextUtils.isEmpty(paramString1))
    {
      paramTextView1.setMaxWidth(2147483647);
      paramTextView2.setVisibility(8);
      return;
    }
    int n = paramContext.getResources().getDimensionPixelSize(2131167278);
    int i1 = DeviceUtils.w(paramContext);
    Paint localPaint = new Paint(paramTextView1.getPaint());
    localPaint.setTextSize(n);
    int i2 = paramContext.getResources().getDimensionPixelSize(2131167315);
    int i3 = paramContext.getResources().getDimensionPixelSize(2131167367);
    if (paramBoolean1) {
      n = paramContext.getResources().getDimensionPixelSize(2131165614) + i2;
    } else {
      n = 0;
    }
    int i4 = (int)localPaint.measureText(paramString1);
    int i5;
    if (paramBoolean2) {
      i5 = paramContext.getResources().getDimensionPixelSize(2131167366) + i2;
    } else {
      i5 = 0;
    }
    paramTextView1.setMaxWidth(i1 - paramContext.getResources().getDimensionPixelSize(2131165663) * 2 - n - paramContext.getResources().getDimensionPixelSize(2131166241) - i2 - (i4 + i3 * 2 + i2) - i5);
    paramTextView2.setVisibility(0);
    try
    {
      paramTextView2.setText(paramString1);
      paramTextView2.setTextColor(Color.parseColor(paramString2));
      paramContext = paramTextView2.getBackground();
      r.d(paramContext, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
      ((GradientDrawable)paramContext).setColor(Color.parseColor(paramString3));
    }
    catch (Exception paramContext)
    {
      z.d(a, "setTextChainTag(): bindTag error.", paramContext);
    }
  }
  
  public static final int H(int paramInt)
  {
    return g[paramInt];
  }
  
  public static final void H0(TextView paramTextView, String paramString, int paramInt)
  {
    if ((paramString != null) && (paramTextView != null))
    {
      Object localObject = paramString;
      if (paramString.length() > paramInt)
      {
        localObject = new StringBuilder();
        paramString = paramString.substring(0, paramInt);
        r.e(paramString, "this as java.lang.String…ing(startIndex, endIndex)");
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append("...");
        localObject = ((StringBuilder)localObject).toString();
      }
      paramTextView.setText((CharSequence)localObject);
    }
  }
  
  public static final float I(Context paramContext)
  {
    r.f(paramContext, "context");
    float f1;
    if (o0(paramContext)) {
      f1 = paramContext.getResources().getDimension(2131166893);
    } else {
      f1 = paramContext.getResources().getDimension(2131166892);
    }
    return f1;
  }
  
  public static final void I0(Context paramContext, CharSequence paramCharSequence, int paramInt)
  {
    r.f(paramContext, "<this>");
    int n;
    if ((paramCharSequence != null) && (paramCharSequence.length() != 0)) {
      n = 0;
    } else {
      n = 1;
    }
    if (n != 0) {
      return;
    }
    Toast.makeText(paramContext.getApplicationContext(), paramCharSequence, paramInt).show();
  }
  
  public static final float J(Context paramContext)
  {
    r.f(paramContext, "context");
    return paramContext.getResources().getDimension(2131166894);
  }
  
  public static final void J0(int paramInt)
  {
    k = paramInt;
  }
  
  public static final int K(Context paramContext)
  {
    r.f(paramContext, "context");
    int n = paramContext.getResources().getIdentifier("status_bar_height", "dimen", "android");
    if (n > 0) {
      n = paramContext.getResources().getDimensionPixelSize(n);
    } else {
      n = 0;
    }
    return n;
  }
  
  public static final void K0(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public static final Bitmap L(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    Paint localPaint = new Paint();
    localPaint.setColor(paramInt4);
    localPaint.setAntiAlias(true);
    Canvas localCanvas = new Canvas(localBitmap);
    float f1 = paramInt1;
    float f2 = paramInt2;
    localCanvas.drawRect(0.0F, 0.0F, f1, f2, localPaint);
    localPaint.setColor(paramInt3);
    localCanvas.drawLine(0.0F, 0.0F, f1, 0.0F, localPaint);
    localCanvas.drawLine(0.0F, f2, f1, f2, localPaint);
    localCanvas.drawLine(0.0F, 0.0F, 0.0F, f2, localPaint);
    localCanvas.drawLine(f1, 0.0F, f1, f2, localPaint);
    r.e(localBitmap, "bmp");
    return localBitmap;
  }
  
  public static final void L0(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public static final int M(List<Integer> paramList, int paramInt)
  {
    r.f(paramList, "values");
    int n = paramList.indexOf(Integer.valueOf(paramInt));
    int i1 = n;
    if (n == -1)
    {
      paramList = a;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Cannot find minutes (");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(") in list");
      z.c(paramList, localStringBuilder.toString());
      i1 = 0;
    }
    return i1;
  }
  
  public static final void M0(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public static final float N(Context paramContext)
  {
    r.f(paramContext, "context");
    int n;
    if (DeviceUtils.O(paramContext)) {
      n = DeviceUtils.w(paramContext);
    } else {
      n = DeviceUtils.u(paramContext);
    }
    return n * 0.0009259259F;
  }
  
  public static final void N0(int paramInt)
  {
    i = paramInt;
  }
  
  public static final float O(Context paramContext, float paramFloat)
  {
    r.f(paramContext, "context");
    paramFloat /= 1080;
    int n;
    if (DeviceUtils.O(paramContext)) {
      n = DeviceUtils.w(paramContext);
    } else {
      n = DeviceUtils.u(paramContext);
    }
    return paramFloat * n;
  }
  
  public static final void O0(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public static final int P(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    boolean bool = o0(paramContext);
    int n = 4;
    if (bool)
    {
      if (paramInt == 5) {
        n = 5;
      }
      return n;
    }
    if (paramInt != 5) {
      n = 3;
    }
    return n;
  }
  
  public static final int Q(Context paramContext, long paramLong)
  {
    r.f(paramContext, "context");
    int n;
    if (q0(paramContext, paramLong)) {
      n = P(paramContext, 6);
    } else {
      n = P(paramContext, 5);
    }
    return n;
  }
  
  public static final float R(Context paramContext)
  {
    r.f(paramContext, "context");
    return O(paramContext, 36.0F);
  }
  
  public static final float S(Context paramContext)
  {
    r.f(paramContext, "context");
    return O(paramContext, 4.0F);
  }
  
  public static final float T(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    if (Utils.t(paramContext) == 6) {
      return O(paramContext, 6.0F);
    }
    float f1;
    if (paramInt <= P(paramContext, 6)) {
      f1 = O(paramContext, 2.0F);
    } else {
      f1 = O(paramContext, 6.0F);
    }
    return f1;
  }
  
  public static final float U(Context paramContext)
  {
    r.f(paramContext, "context");
    return O(paramContext, 10.0F);
  }
  
  public static final float V(Context paramContext)
  {
    r.f(paramContext, "context");
    return O(paramContext, -1.0F);
  }
  
  public static final float W(Context paramContext)
  {
    r.f(paramContext, "context");
    return O(paramContext, 28.0F);
  }
  
  public static final float X(Context paramContext)
  {
    r.f(paramContext, "context");
    return O(paramContext, 132.0F);
  }
  
  public static final float Y(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    int n = P(paramContext, 6);
    float f1;
    if (o0(paramContext))
    {
      if (paramInt > n) {
        f1 = paramInt * 42 + 10;
      } else {
        f1 = 147.7F;
      }
      f1 = O(paramContext, f1);
    }
    else
    {
      if (paramInt > n) {
        paramInt = paramInt * 42 + 10;
      } else {
        paramInt = 114;
      }
      f1 = O(paramContext, paramInt);
    }
    return f1;
  }
  
  public static final int Z(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    int n = P(paramContext, 6);
    paramContext = paramContext.getResources();
    if (paramInt > n) {
      paramInt = 2131166875;
    } else {
      paramInt = 2131166874;
    }
    return (int)paramContext.getDimension(paramInt);
  }
  
  public static final int a0(Context paramContext)
  {
    r.f(paramContext, "context");
    return w(paramContext);
  }
  
  public static final int b0(Context paramContext)
  {
    r.f(paramContext, "context");
    int n;
    if (DeviceUtils.O(paramContext)) {
      n = (int)O(paramContext, 80.0F);
    } else {
      n = 0;
    }
    return n;
  }
  
  public static final int c0(Context paramContext)
  {
    r.f(paramContext, "context");
    return (int)O(paramContext, 50.0F);
  }
  
  public static final void d(Context paramContext, TextView paramTextView, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    r.f(paramContext, "context");
    r.f(paramTextView, "textView");
    r.f(paramString, "tag");
    e(paramContext, paramTextView, new String[] { paramString }, paramInt1, paramInt2, new int[] { paramInt3 });
  }
  
  public static final int d0(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    if (paramInt == 3) {
      paramInt = w(paramContext);
    } else {
      paramInt = paramContext.getResources().getDimensionPixelSize(2131167448);
    }
    return paramInt;
  }
  
  public static final void e(Context paramContext, TextView paramTextView, String[] paramArrayOfString, final int paramInt1, final int paramInt2, int[] paramArrayOfInt)
  {
    r.f(paramContext, "context");
    r.f(paramTextView, "textView");
    r.f(paramArrayOfInt, "tagBgColors");
    if ((paramArrayOfString != null) && (paramArrayOfString.length != 0))
    {
      final int n = paramContext.getResources().getDimensionPixelSize(2131167398);
      final float f1 = paramTextView.getTextSize();
      paramContext = paramTextView.getText().toString();
      String[] arrayOfString = new String[paramArrayOfString.length];
      int[] arrayOfInt = new int[paramArrayOfString.length];
      int i1 = paramArrayOfString.length;
      Object localObject;
      for (int i2 = 0;; i2++)
      {
        i3 = 1;
        if (i2 >= i1) {
          break;
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append('+');
        ((StringBuilder)localObject).append(paramArrayOfString[i2]);
        ((StringBuilder)localObject).append('+');
        arrayOfString[i2] = ((StringBuilder)localObject).toString();
        arrayOfInt[i2] = (paramContext.length() + 1);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(paramContext);
        ((StringBuilder)localObject).append(' ');
        ((StringBuilder)localObject).append(arrayOfString[i2]);
        paramContext = ((StringBuilder)localObject).toString();
      }
      paramContext = new SpannableString(paramContext);
      int i4 = paramArrayOfString.length;
      i1 = 0;
      i2 = i3;
      int i3 = i4;
      for (;;)
      {
        i4 = paramInt1;
        if (i1 >= i3) {
          break;
        }
        paramArrayOfString = new float[8];
        float f2 = n;
        paramArrayOfString[0] = f2;
        paramArrayOfString[i2] = f2;
        paramArrayOfString[2] = f2;
        paramArrayOfString[3] = f2;
        paramArrayOfString[4] = f2;
        paramArrayOfString[5] = f2;
        paramArrayOfString[6] = f2;
        paramArrayOfString[7] = f2;
        paramArrayOfString = new ShapeDrawable(new RoundRectShape(paramArrayOfString, null, null));
        paramArrayOfString.getPaint().setColor(paramArrayOfInt[i1]);
        localObject = paramArrayOfString.getPaint();
        f2 = i4;
        ((Paint)localObject).setTextSize(f2);
        localObject = new Paint(paramTextView.getPaint());
        ((Paint)localObject).setTextSize(i4 / 2);
        String str1 = arrayOfString[i1];
        r.c(str1);
        str1 = str1.substring(0, i2);
        r.e(str1, "this as java.lang.String…ing(startIndex, endIndex)");
        final float f3 = ((Paint)localObject).measureText(str1);
        ((Paint)localObject).setTextSize(f2);
        String str2 = arrayOfString[i1];
        r.c(str2);
        str1 = arrayOfString[i1];
        r.c(str1);
        str1 = str2.substring(i2, str1.length() - i2);
        r.e(str1, "this as java.lang.String…ing(startIndex, endIndex)");
        paramArrayOfString.setBounds(0, 0, Math.round(((Paint)localObject).measureText(str1) + 2.0F * f3), i4 + 10);
        localObject = new RelativeSizeSpan(0.5F);
        i4 = arrayOfInt[i1];
        paramContext.setSpan(localObject, i4 - 1, i4, 33);
        localObject = new a(paramArrayOfString, paramInt1, f1, 10, n, paramInt2, f3);
        i4 = arrayOfInt[i1];
        paramArrayOfString = arrayOfString[i1];
        r.c(paramArrayOfString);
        paramContext.setSpan(localObject, i4, paramArrayOfString.length() + i4, 33);
        i1++;
      }
      paramTextView.setText(paramContext);
      return;
    }
    z.a(a, "bindTag(): tag is empty!");
  }
  
  public static final int e0(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    if (paramInt == 3) {
      paramInt = x(paramContext);
    } else {
      paramInt = paramContext.getResources().getDimensionPixelSize(2131167447);
    }
    return paramInt;
  }
  
  public static final void f(TextView paramTextView, String paramString)
  {
    if (paramTextView == null) {
      return;
    }
    if (paramString != null)
    {
      int n = paramString.length() - 1;
      int i1 = 0;
      int i2 = i1;
      while (i1 <= n)
      {
        int i3;
        if (i2 == 0) {
          i3 = i1;
        } else {
          i3 = n;
        }
        if (r.h(paramString.charAt(i3), 32) <= 0) {
          i3 = 1;
        } else {
          i3 = 0;
        }
        if (i2 == 0)
        {
          if (i3 == 0) {
            i2 = 1;
          } else {
            i1++;
          }
        }
        else
        {
          if (i3 == 0) {
            break;
          }
          n--;
        }
      }
      if (!TextUtils.isEmpty(paramString.subSequence(i1, n + 1).toString()))
      {
        paramTextView.setVisibility(0);
        paramTextView.setText(paramString);
        return;
      }
    }
    paramTextView.setVisibility(8);
  }
  
  public static final int f0(Context paramContext)
  {
    r.f(paramContext, "context");
    return paramContext.getResources().getDimensionPixelSize(2131165488);
  }
  
  public static final int g(int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = paramFloat;
    if (paramFloat > 1.0F) {
      f1 = 1.0F;
    }
    int n = Color.alpha(paramInt1);
    int i1 = Color.red(paramInt1);
    int i2 = Color.green(paramInt1);
    int i3 = Color.blue(paramInt1);
    paramInt1 = Color.alpha(paramInt2);
    int i4 = Color.red(paramInt2);
    int i5 = Color.green(paramInt2);
    paramInt2 = Color.blue(paramInt2);
    return Color.argb(n + (int)((paramInt1 - n) * f1), i1 + (int)((i4 - i1) * f1), i2 + (int)((i5 - i2) * f1), i3 + (int)((paramInt2 - i3) * f1));
  }
  
  public static final int g0(Context paramContext)
  {
    r.f(paramContext, "context");
    int n;
    if ((!DeviceUtils.O(paramContext)) && (Utils.t(paramContext) == 3)) {
      n = (int)O(paramContext, 94.0F);
    } else {
      n = paramContext.getResources().getDimensionPixelOffset(2131165483);
    }
    return n;
  }
  
  public static final int h(Context paramContext, Typeface paramTypeface, float paramFloat, int paramInt)
  {
    r.f(paramContext, "context");
    r.f(paramTypeface, "typeface");
    Paint localPaint = d;
    localPaint.setTypeface(paramTypeface);
    localPaint.setTextSize(TypedValue.applyDimension(2, paramFloat, paramContext.getResources().getDisplayMetrics()));
    localPaint.setColor(paramInt);
    localPaint.setAntiAlias(true);
    return (int)Math.ceil(localPaint.getFontMetrics().descent - localPaint.getFontMetrics().ascent);
  }
  
  public static final float h0(Context paramContext)
  {
    r.f(paramContext, "context");
    return paramContext.getResources().getDimension(2131166897);
  }
  
  public static final InputFilter[] i(Context paramContext, int paramInt1, int paramInt2)
  {
    r.f(paramContext, "context");
    return new InputFilter[] { new u0(paramInt1, paramContext, paramInt2), new InputFilter.LengthFilter(paramInt1) };
  }
  
  public static final float i0(Context paramContext)
  {
    r.f(paramContext, "context");
    return O(paramContext, 255.0F);
  }
  
  private static final CharSequence j(int paramInt1, Context paramContext, int paramInt2, CharSequence paramCharSequence, int paramInt3, int paramInt4, Spanned paramSpanned, int paramInt5, int paramInt6)
  {
    r.f(paramContext, "$context");
    if (paramSpanned.length() + paramCharSequence.length() > paramInt1) {
      t0.h(paramContext, paramInt2, null, 4, null);
    }
    return null;
  }
  
  public static final float j0(Context paramContext)
  {
    r.f(paramContext, "context");
    return paramContext.getResources().getDimension(2131166898);
  }
  
  public static final void k(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramView == null)
    {
      z.m(a, "expandTouchArea(): view is null");
      return;
    }
    Object localObject1 = paramView.getParent();
    if (localObject1 != null) {
      localObject1 = (View)localObject1;
    } else {
      localObject1 = null;
    }
    if (localObject1 == null)
    {
      z.m(a, "expandTouchArea(): parent is null");
      return;
    }
    Object localObject2 = ((View)localObject1).getParent();
    if (localObject2 != null) {
      localObject2 = (View)localObject2;
    } else {
      localObject2 = null;
    }
    if ((paramBoolean) && (localObject2 == null))
    {
      z.m(a, "expandTouchArea(): bindToGrandparent is true but grandParent is null");
      return;
    }
    ((View)localObject1).post(new v0(paramView, paramBoolean, (View)localObject1, paramInt1, paramInt3, paramInt2, paramInt4, (View)localObject2));
  }
  
  public static final float k0(Context paramContext)
  {
    r.f(paramContext, "context");
    return O(paramContext, 1500.0F);
  }
  
  private static final void l(View paramView1, boolean paramBoolean, View paramView2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, View paramView3)
  {
    Rect localRect = new Rect();
    paramView1.getHitRect(localRect);
    if (paramBoolean)
    {
      localRect.top += paramView2.getTop();
      localRect.left += paramView2.getLeft();
      localRect.bottom += paramView2.getTop();
      localRect.right += paramView2.getLeft();
    }
    localRect.left -= paramInt1;
    localRect.right += paramInt2;
    localRect.top -= paramInt3;
    localRect.bottom += paramInt4;
    paramView1 = new TouchDelegate(localRect, paramView1);
    if (paramBoolean)
    {
      if (paramView3 != null) {
        paramView3.setTouchDelegate(paramView1);
      }
    }
    else {
      paramView2.setTouchDelegate(paramView1);
    }
  }
  
  public static final void l0(Context paramContext, View paramView)
  {
    if ((paramContext != null) && (paramView != null))
    {
      paramContext = paramContext.getSystemService("input_method");
      r.d(paramContext, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
      ((InputMethodManager)paramContext).hideSoftInputFromWindow(paramView.getApplicationWindowToken(), 2);
    }
  }
  
  public static final Bitmap m(Resources paramResources, int paramInt)
  {
    try
    {
      r.f(paramResources, "res");
      paramResources = n(paramResources, paramInt, paramResources.getDimensionPixelSize(2131165725));
      return paramResources;
    }
    finally
    {
      paramResources = finally;
      throw paramResources;
    }
  }
  
  public static final boolean m0(Context paramContext)
  {
    r.f(paramContext, "context");
    boolean bool;
    if (DeviceUtils.v(paramContext) <= O(paramContext, 2160.0F)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final Bitmap n(Resources paramResources, int paramInt1, int paramInt2)
  {
    try
    {
      r.f(paramResources, "res");
      paramResources = q(paramInt1, paramInt2, false, 4, null);
      return paramResources;
    }
    finally
    {
      paramResources = finally;
      throw paramResources;
    }
  }
  
  public static final boolean n0(Context paramContext)
  {
    r.f(paramContext, "context");
    boolean bool;
    if (DeviceUtils.v(paramContext) <= O(paramContext, 2248.0F)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final Bitmap o(int paramInt1, int paramInt2)
  {
    return q(paramInt1, paramInt2, false, 4, null);
  }
  
  public static final boolean o0(Context paramContext)
  {
    r.f(paramContext, "context");
    boolean bool;
    if (DeviceUtils.v(paramContext) >= O(paramContext, 2340.0F)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final Bitmap p(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      int n = i.a(new Integer[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      HashMap localHashMap = f;
      Object localObject2 = (Bitmap)localHashMap.get(Integer.valueOf(n));
      if (localObject2 != null) {
        return localObject2;
      }
      Bitmap localBitmap = Bitmap.createBitmap(paramInt2, paramInt2, Bitmap.Config.ARGB_8888);
      Paint localPaint = new android/graphics/Paint;
      localPaint.<init>();
      localPaint.setColor(paramInt1);
      localPaint.setAntiAlias(true);
      localObject2 = new android/graphics/Canvas;
      r.c(localBitmap);
      ((Canvas)localObject2).<init>(localBitmap);
      if (paramBoolean)
      {
        localPaint.setStyle(Paint.Style.STROKE);
        localPaint.setStrokeWidth(6.0F);
        ((Canvas)localObject2).drawCircle(paramInt2 / 2, paramInt2 / 2, paramInt2 / 2 - 3, localPaint);
      }
      else
      {
        localPaint.setStyle(Paint.Style.FILL);
        ((Canvas)localObject2).drawCircle(paramInt2 / 2, paramInt2 / 2, paramInt2 / 2, localPaint);
      }
      localHashMap.put(Integer.valueOf(n), localBitmap);
      return localBitmap;
    }
    finally {}
  }
  
  public static final boolean p0()
  {
    return s.b("/data/system/theme/fonts/Roboto-Regular.ttf");
  }
  
  public static final boolean q0(Context paramContext, long paramLong)
  {
    r.f(paramContext, "context");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    boolean bool;
    if (e0.n(paramContext, localCalendar) == 6) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final Bitmap r(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramInt2, paramInt2, Bitmap.Config.ARGB_8888);
      Paint localPaint = new android/graphics/Paint;
      localPaint.<init>();
      localPaint.setColor(paramInt1);
      localPaint.setAntiAlias(true);
      Canvas localCanvas = new android/graphics/Canvas;
      r.c(localBitmap);
      localCanvas.<init>(localBitmap);
      if (paramBoolean)
      {
        localCanvas.drawCircle(paramInt2 / 2, paramInt2 / 2, 62.0F, localPaint);
        localPaint.setStrokeWidth(4.0F);
        localPaint.setStyle(Paint.Style.STROKE);
        localCanvas.drawCircle(paramInt2 / 2, paramInt2 / 2, paramInt2 / 2 - 2, localPaint);
      }
      else
      {
        localCanvas.drawCircle(paramInt2 / 2, paramInt2 / 2, 50.0F, localPaint);
      }
      return localBitmap;
    }
    finally {}
  }
  
  public static final boolean r0(Context paramContext)
  {
    r.f(paramContext, "context");
    boolean bool;
    if (paramContext.getResources().getConfiguration().fontScale >= 1.25D) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final int s()
  {
    return k;
  }
  
  public static final boolean s0(Context paramContext)
  {
    r.f(paramContext, "context");
    boolean bool;
    if ((paramContext.getResources().getConfiguration().uiMode & 0x30) == 32) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final int t(Context paramContext)
  {
    r.f(paramContext, "context");
    int n = paramContext.getResources().getDimensionPixelOffset(2131167323);
    int i1 = K(paramContext);
    if (i1 != 0) {
      i1 -= n;
    } else {
      i1 = 0;
    }
    return i1;
  }
  
  public static final boolean t0()
  {
    return j;
  }
  
  public static final int u(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    float f1;
    if ((paramInt == 3) && (DeviceUtils.O(paramContext))) {
      f1 = O(paramContext, 12.0F);
    } else {
      f1 = O(paramContext, 16.0F);
    }
    return (int)f1;
  }
  
  public static final boolean u0()
  {
    return h;
  }
  
  public static final int v(Context paramContext, int paramInt)
  {
    r.f(paramContext, "context");
    float f1;
    if ((paramInt == 3) && (DeviceUtils.O(paramContext))) {
      f1 = O(paramContext, 16.0F);
    } else {
      f1 = O(paramContext, 18.0F);
    }
    return (int)f1;
  }
  
  public static final boolean v0()
  {
    boolean bool;
    if (i == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final int w(Context paramContext)
  {
    r.f(paramContext, "context");
    int n;
    if (!DeviceUtils.O(paramContext)) {
      n = (int)O(paramContext, 60.0F);
    } else {
      n = x(paramContext);
    }
    return n;
  }
  
  public static final boolean w0()
  {
    return l;
  }
  
  public static final int x(Context paramContext)
  {
    r.f(paramContext, "context");
    float f1;
    if (DeviceUtils.O(paramContext)) {
      f1 = O(paramContext, 80.0F);
    } else {
      f1 = O(paramContext, 168.0F);
    }
    return (int)f1;
  }
  
  public static final boolean x0()
  {
    int n = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault());
    boolean bool = true;
    if (n != 1) {
      bool = false;
    }
    return bool;
  }
  
  public static final Bitmap y(Context paramContext, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    r.f(paramContext, "context");
    r.f(paramString, "text");
    int n = paramInt2 / 9;
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setColor(paramInt1);
    float f1 = paramInt2;
    localPaint.setTextSize(f1);
    paramContext = Bitmap.createBitmap((int)(localPaint.measureText(paramString) + n * 2), (int)(paramInt2 / 0.75D), Bitmap.Config.ARGB_4444);
    new Canvas(paramContext).drawText(paramString, n, f1, localPaint);
    r.e(paramContext, "bitmap");
    return paramContext;
  }
  
  public static final boolean y0(RecyclerView paramRecyclerView)
  {
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (paramRecyclerView != null) {
      if (paramRecyclerView.getChildCount() == 0)
      {
        bool2 = bool1;
      }
      else
      {
        RecyclerView.o localo = paramRecyclerView.getLayoutManager();
        r.d(localo, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        int n = ((LinearLayoutManager)localo).findFirstVisibleItemPosition();
        paramRecyclerView = paramRecyclerView.getChildAt(0);
        int i1;
        if (paramRecyclerView != null) {
          i1 = paramRecyclerView.getTop();
        } else {
          i1 = -1;
        }
        if ((i1 == 0) && (n == 0)) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
      }
    }
    return bool2;
  }
  
  public static final int z(Context paramContext)
  {
    r.f(paramContext, "context");
    return x(paramContext) / 2;
  }
  
  public static final ArrayList<Integer> z0(Resources paramResources, int paramInt)
  {
    r.f(paramResources, "r");
    paramResources = paramResources.getIntArray(paramInt);
    r.e(paramResources, "r.getIntArray(resNum)");
    int n = paramResources.length;
    ArrayList localArrayList = new ArrayList(n);
    for (paramInt = 0; paramInt < n; paramInt++) {
      localArrayList.add(Integer.valueOf(paramResources[paramInt]));
    }
    return localArrayList;
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/util/x0$a", "Landroid/text/style/ImageSpan;", "Landroid/graphics/Canvas;", "canvas", "", "text", "", "start", "end", "", "x", "top", "y", "bottom", "Landroid/graphics/Paint;", "paint", "Lkotlin/u;", "draw", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a
    extends ImageSpan
  {
    a(ShapeDrawable paramShapeDrawable, int paramInt1, float paramFloat1, int paramInt2, int paramInt3, int paramInt4, float paramFloat2)
    {
      super();
    }
    
    public void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
    {
      r.f(paramCanvas, "canvas");
      r.f(paramCharSequence, "text");
      r.f(paramPaint, "paint");
      paramCanvas.save();
      int i;
      if (paramFloat == 0.0F) {
        i = 1;
      } else {
        i = 0;
      }
      if (i == 0) {
        paramCanvas.translate(0.0F, paramInt1 - f1 + this.c / 2);
      }
      super.draw(paramCanvas, paramCharSequence, paramInt1, paramInt2, paramFloat, paramInt3, paramInt4, paramInt5, paramPaint);
      paramInt3 = (this.c + n) / 2;
      paramPaint.setTextSize(paramInt1);
      paramPaint.setColor(paramInt2);
      float f1 = f3;
      paramCanvas.drawText(paramCharSequence.subSequence(paramInt1 + 1, paramInt2 - 1).toString(), paramFloat + f1, paramInt5 - paramInt3, paramPaint);
      paramCanvas.restore();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.x0
 * JD-Core Version:    0.7.0.1
 */