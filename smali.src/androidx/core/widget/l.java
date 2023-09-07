package androidx.core.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build.VERSION;
import android.text.Editable;
import android.text.PrecomputedText.Params;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.core.text.b;
import androidx.core.text.b.a;
import androidx.core.text.b.a.a;
import androidx.core.util.h;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class l
{
  public static Drawable[] a(TextView paramTextView)
  {
    return b.a(paramTextView);
  }
  
  public static int b(TextView paramTextView)
  {
    return paramTextView.getPaddingTop() - paramTextView.getPaint().getFontMetricsInt().top;
  }
  
  public static int c(TextView paramTextView)
  {
    return paramTextView.getPaddingBottom() + paramTextView.getPaint().getFontMetricsInt().bottom;
  }
  
  public static int d(TextView paramTextView)
  {
    return a.b(paramTextView);
  }
  
  private static int e(TextDirectionHeuristic paramTextDirectionHeuristic)
  {
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
      return 1;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
      return 1;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
      return 2;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.LTR) {
      return 3;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.RTL) {
      return 4;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
      return 5;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
      return 6;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
      return 7;
    }
    return 1;
  }
  
  private static TextDirectionHeuristic f(TextView paramTextView)
  {
    if ((paramTextView.getTransformationMethod() instanceof PasswordTransformationMethod)) {
      return TextDirectionHeuristics.LTR;
    }
    int i = Build.VERSION.SDK_INT;
    int j = 0;
    if ((i >= 28) && ((paramTextView.getInputType() & 0xF) == 3))
    {
      j = Character.getDirectionality(e.a(d.a(b.d(paramTextView)))[0].codePointAt(0));
      if ((j != 1) && (j != 2)) {
        return TextDirectionHeuristics.LTR;
      }
      return TextDirectionHeuristics.RTL;
    }
    if (b.b(paramTextView) == 1) {
      j = 1;
    }
    switch (b.c(paramTextView))
    {
    default: 
      if (j != 0) {
        paramTextView = TextDirectionHeuristics.FIRSTSTRONG_RTL;
      }
      break;
    case 7: 
      return TextDirectionHeuristics.FIRSTSTRONG_RTL;
    case 6: 
      return TextDirectionHeuristics.FIRSTSTRONG_LTR;
    case 5: 
      return TextDirectionHeuristics.LOCALE;
    case 4: 
      return TextDirectionHeuristics.RTL;
    case 3: 
      return TextDirectionHeuristics.LTR;
    case 2: 
      return TextDirectionHeuristics.ANYRTL_LTR;
    }
    paramTextView = TextDirectionHeuristics.FIRSTSTRONG_LTR;
    return paramTextView;
  }
  
  public static b.a g(TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return new b.a(e.b(paramTextView));
    }
    b.a.a locala = new b.a.a(new TextPaint(paramTextView.getPaint()));
    locala.b(c.a(paramTextView));
    locala.c(c.d(paramTextView));
    locala.d(f(paramTextView));
    return locala.a();
  }
  
  public static void h(TextView paramTextView, ColorStateList paramColorStateList)
  {
    h.g(paramTextView);
    c.f(paramTextView, paramColorStateList);
  }
  
  public static void i(TextView paramTextView, PorterDuff.Mode paramMode)
  {
    h.g(paramTextView);
    c.g(paramTextView, paramMode);
  }
  
  public static void j(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    b.e(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public static void k(TextView paramTextView, int paramInt)
  {
    h.d(paramInt);
    if (Build.VERSION.SDK_INT >= 28)
    {
      e.c(paramTextView, paramInt);
      return;
    }
    Paint.FontMetricsInt localFontMetricsInt = paramTextView.getPaint().getFontMetricsInt();
    int i;
    if (a.a(paramTextView)) {
      i = localFontMetricsInt.top;
    } else {
      i = localFontMetricsInt.ascent;
    }
    if (paramInt > Math.abs(i)) {
      paramTextView.setPadding(paramTextView.getPaddingLeft(), paramInt + i, paramTextView.getPaddingRight(), paramTextView.getPaddingBottom());
    }
  }
  
  public static void l(TextView paramTextView, int paramInt)
  {
    h.d(paramInt);
    Paint.FontMetricsInt localFontMetricsInt = paramTextView.getPaint().getFontMetricsInt();
    int i;
    if (a.a(paramTextView)) {
      i = localFontMetricsInt.bottom;
    } else {
      i = localFontMetricsInt.descent;
    }
    if (paramInt > Math.abs(i)) {
      paramTextView.setPadding(paramTextView.getPaddingLeft(), paramTextView.getPaddingTop(), paramTextView.getPaddingRight(), paramInt - i);
    }
  }
  
  public static void m(TextView paramTextView, int paramInt)
  {
    h.d(paramInt);
    int i = paramTextView.getPaint().getFontMetricsInt(null);
    if (paramInt != i) {
      paramTextView.setLineSpacing(paramInt - i, 1.0F);
    }
  }
  
  public static void n(TextView paramTextView, b paramb)
  {
    if (Build.VERSION.SDK_INT >= 29)
    {
      paramTextView.setText(paramb.b());
    }
    else
    {
      if (!g(paramTextView).a(paramb.a())) {
        break label39;
      }
      paramTextView.setText(paramb);
    }
    return;
    label39:
    throw new IllegalArgumentException("Given text can not be applied to TextView.");
  }
  
  public static void o(TextView paramTextView, int paramInt)
  {
    paramTextView.setTextAppearance(paramInt);
  }
  
  public static void p(TextView paramTextView, b.a parama)
  {
    b.h(paramTextView, e(parama.d()));
    paramTextView.getPaint().set(parama.e());
    c.e(paramTextView, parama.b());
    c.h(paramTextView, parama.c());
  }
  
  public static ActionMode.Callback q(ActionMode.Callback paramCallback)
  {
    ActionMode.Callback localCallback = paramCallback;
    if ((paramCallback instanceof f)) {
      localCallback = ((f)paramCallback).d();
    }
    return localCallback;
  }
  
  public static ActionMode.Callback r(TextView paramTextView, ActionMode.Callback paramCallback)
  {
    if ((Build.VERSION.SDK_INT <= 27) && (!(paramCallback instanceof f)) && (paramCallback != null)) {
      return new f(paramCallback, paramTextView);
    }
    return paramCallback;
  }
  
  static class a
  {
    static boolean a(TextView paramTextView)
    {
      return paramTextView.getIncludeFontPadding();
    }
    
    static int b(TextView paramTextView)
    {
      return paramTextView.getMaxLines();
    }
    
    static int c(TextView paramTextView)
    {
      return paramTextView.getMinLines();
    }
  }
  
  static class b
  {
    static Drawable[] a(TextView paramTextView)
    {
      return paramTextView.getCompoundDrawablesRelative();
    }
    
    static int b(View paramView)
    {
      return paramView.getLayoutDirection();
    }
    
    static int c(View paramView)
    {
      return paramView.getTextDirection();
    }
    
    static Locale d(TextView paramTextView)
    {
      return paramTextView.getTextLocale();
    }
    
    static void e(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
    {
      paramTextView.setCompoundDrawablesRelative(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
    }
    
    static void f(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    static void g(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
    {
      paramTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
    }
    
    static void h(View paramView, int paramInt)
    {
      paramView.setTextDirection(paramInt);
    }
  }
  
  static class c
  {
    static int a(TextView paramTextView)
    {
      return paramTextView.getBreakStrategy();
    }
    
    static ColorStateList b(TextView paramTextView)
    {
      return paramTextView.getCompoundDrawableTintList();
    }
    
    static PorterDuff.Mode c(TextView paramTextView)
    {
      return paramTextView.getCompoundDrawableTintMode();
    }
    
    static int d(TextView paramTextView)
    {
      return paramTextView.getHyphenationFrequency();
    }
    
    static void e(TextView paramTextView, int paramInt)
    {
      paramTextView.setBreakStrategy(paramInt);
    }
    
    static void f(TextView paramTextView, ColorStateList paramColorStateList)
    {
      paramTextView.setCompoundDrawableTintList(paramColorStateList);
    }
    
    static void g(TextView paramTextView, PorterDuff.Mode paramMode)
    {
      paramTextView.setCompoundDrawableTintMode(paramMode);
    }
    
    static void h(TextView paramTextView, int paramInt)
    {
      paramTextView.setHyphenationFrequency(paramInt);
    }
  }
  
  static class d
  {
    static DecimalFormatSymbols a(Locale paramLocale)
    {
      return DecimalFormatSymbols.getInstance(paramLocale);
    }
  }
  
  static class e
  {
    static String[] a(DecimalFormatSymbols paramDecimalFormatSymbols)
    {
      return n.a(paramDecimalFormatSymbols);
    }
    
    static PrecomputedText.Params b(TextView paramTextView)
    {
      return m.a(paramTextView);
    }
    
    static void c(TextView paramTextView, int paramInt)
    {
      o.a(paramTextView, paramInt);
    }
  }
  
  private static class f
    implements ActionMode.Callback
  {
    private final ActionMode.Callback a;
    private final TextView b;
    private Class<?> c;
    private Method d;
    private boolean e;
    private boolean f;
    
    f(ActionMode.Callback paramCallback, TextView paramTextView)
    {
      this.a = paramCallback;
      this.b = paramTextView;
      this.f = false;
    }
    
    private Intent a()
    {
      return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
    }
    
    private Intent b(ResolveInfo paramResolveInfo, TextView paramTextView)
    {
      paramTextView = a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", e(paramTextView) ^ true);
      paramResolveInfo = paramResolveInfo.activityInfo;
      return paramTextView.setClassName(paramResolveInfo.packageName, paramResolveInfo.name);
    }
    
    private List<ResolveInfo> c(Context paramContext, PackageManager paramPackageManager)
    {
      ArrayList localArrayList = new ArrayList();
      if (!(paramContext instanceof Activity)) {
        return localArrayList;
      }
      paramPackageManager = paramPackageManager.queryIntentActivities(a(), 0).iterator();
      while (paramPackageManager.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)paramPackageManager.next();
        if (f(localResolveInfo, paramContext)) {
          localArrayList.add(localResolveInfo);
        }
      }
      return localArrayList;
    }
    
    private boolean e(TextView paramTextView)
    {
      boolean bool;
      if (((paramTextView instanceof Editable)) && (paramTextView.onCheckIsTextEditor()) && (paramTextView.isEnabled())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    private boolean f(ResolveInfo paramResolveInfo, Context paramContext)
    {
      boolean bool1 = paramContext.getPackageName().equals(paramResolveInfo.activityInfo.packageName);
      boolean bool2 = true;
      if (bool1) {
        return true;
      }
      paramResolveInfo = paramResolveInfo.activityInfo;
      if (!paramResolveInfo.exported) {
        return false;
      }
      paramResolveInfo = paramResolveInfo.permission;
      bool1 = bool2;
      if (paramResolveInfo != null) {
        if (paramContext.checkSelfPermission(paramResolveInfo) == 0) {
          bool1 = bool2;
        } else {
          bool1 = false;
        }
      }
      return bool1;
    }
    
    private void g(Menu paramMenu)
    {
      Object localObject1 = this.b.getContext();
      PackageManager localPackageManager = ((Context)localObject1).getPackageManager();
      if (!this.f)
      {
        this.f = true;
        try
        {
          Class localClass = Class.forName("com.android.internal.view.menu.MenuBuilder");
          this.c = localClass;
          this.d = localClass.getDeclaredMethod("removeItemAt", new Class[] { Integer.TYPE });
          this.e = true;
        }
        catch (ClassNotFoundException|NoSuchMethodException localClassNotFoundException)
        {
          this.c = null;
          this.d = null;
          this.e = false;
        }
      }
      try
      {
        Object localObject2;
        if ((this.e) && (this.c.isInstance(paramMenu))) {
          localObject2 = this.d;
        } else {
          localObject2 = paramMenu.getClass().getDeclaredMethod("removeItemAt", new Class[] { Integer.TYPE });
        }
        for (int i = paramMenu.size() - 1; i >= 0; i--)
        {
          MenuItem localMenuItem = paramMenu.getItem(i);
          if ((localMenuItem.getIntent() != null) && ("android.intent.action.PROCESS_TEXT".equals(localMenuItem.getIntent().getAction()))) {
            ((Method)localObject2).invoke(paramMenu, new Object[] { Integer.valueOf(i) });
          }
        }
        localObject1 = c((Context)localObject1, localPackageManager);
        for (i = 0; i < ((List)localObject1).size(); i++)
        {
          localObject2 = (ResolveInfo)((List)localObject1).get(i);
          paramMenu.add(0, 0, i + 100, ((ResolveInfo)localObject2).loadLabel(localPackageManager)).setIntent(b((ResolveInfo)localObject2, this.b)).setShowAsAction(1);
        }
        label290:
        return;
      }
      catch (NoSuchMethodException|IllegalAccessException|InvocationTargetException paramMenu)
      {
        break label290;
      }
    }
    
    ActionMode.Callback d()
    {
      return this.a;
    }
    
    public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
    {
      return this.a.onActionItemClicked(paramActionMode, paramMenuItem);
    }
    
    public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
    {
      return this.a.onCreateActionMode(paramActionMode, paramMenu);
    }
    
    public void onDestroyActionMode(ActionMode paramActionMode)
    {
      this.a.onDestroyActionMode(paramActionMode);
    }
    
    public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
    {
      g(paramMenu);
      return this.a.onPrepareActionMode(paramActionMode, paramMenu);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.l
 * JD-Core Version:    0.7.0.1
 */