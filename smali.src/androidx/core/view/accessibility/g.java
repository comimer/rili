package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo;
import android.view.accessibility.AccessibilityNodeInfo.RangeInfo;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class g
{
  private final AccessibilityNodeInfo a;
  public int b = -1;
  private int c = -1;
  
  private g(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    this.a = paramAccessibilityNodeInfo;
  }
  
  public static g F()
  {
    return s0(AccessibilityNodeInfo.obtain());
  }
  
  public static g G(View paramView)
  {
    return s0(AccessibilityNodeInfo.obtain(paramView));
  }
  
  public static g H(g paramg)
  {
    return s0(AccessibilityNodeInfo.obtain(paramg.a));
  }
  
  private void M(int paramInt, boolean paramBoolean)
  {
    Bundle localBundle = p();
    if (localBundle != null)
    {
      int i = localBundle.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0);
      int j;
      if (paramBoolean) {
        j = paramInt;
      } else {
        j = 0;
      }
      localBundle.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", j | i & paramInt);
    }
  }
  
  private List<Integer> e(String paramString)
  {
    ArrayList localArrayList1 = this.a.getExtras().getIntegerArrayList(paramString);
    ArrayList localArrayList2 = localArrayList1;
    if (localArrayList1 == null)
    {
      localArrayList2 = new ArrayList();
      this.a.getExtras().putIntegerArrayList(paramString, localArrayList2);
    }
    return localArrayList2;
  }
  
  private static String g(int paramInt)
  {
    if (paramInt != 1)
    {
      if (paramInt != 2)
      {
        switch (paramInt)
        {
        default: 
          switch (paramInt)
          {
          default: 
            switch (paramInt)
            {
            default: 
              return "ACTION_UNKNOWN";
            case 16908362: 
              return "ACTION_PRESS_AND_HOLD";
            case 16908361: 
              return "ACTION_PAGE_RIGHT";
            case 16908360: 
              return "ACTION_PAGE_LEFT";
            case 16908359: 
              return "ACTION_PAGE_DOWN";
            case 16908358: 
              return "ACTION_PAGE_UP";
            case 16908357: 
              return "ACTION_HIDE_TOOLTIP";
            }
            return "ACTION_SHOW_TOOLTIP";
          case 16908349: 
            return "ACTION_SET_PROGRESS";
          case 16908348: 
            return "ACTION_CONTEXT_CLICK";
          case 16908347: 
            return "ACTION_SCROLL_RIGHT";
          case 16908346: 
            return "ACTION_SCROLL_DOWN";
          case 16908345: 
            return "ACTION_SCROLL_LEFT";
          case 16908344: 
            return "ACTION_SCROLL_UP";
          case 16908343: 
            return "ACTION_SCROLL_TO_POSITION";
          }
          return "ACTION_SHOW_ON_SCREEN";
        case 16908372: 
          return "ACTION_IME_ENTER";
        case 16908354: 
          return "ACTION_MOVE_WINDOW";
        case 2097152: 
          return "ACTION_SET_TEXT";
        case 524288: 
          return "ACTION_COLLAPSE";
        case 262144: 
          return "ACTION_EXPAND";
        case 131072: 
          return "ACTION_SET_SELECTION";
        case 65536: 
          return "ACTION_CUT";
        case 32768: 
          return "ACTION_PASTE";
        case 16384: 
          return "ACTION_COPY";
        case 8192: 
          return "ACTION_SCROLL_BACKWARD";
        case 4096: 
          return "ACTION_SCROLL_FORWARD";
        case 2048: 
          return "ACTION_PREVIOUS_HTML_ELEMENT";
        case 1024: 
          return "ACTION_NEXT_HTML_ELEMENT";
        case 512: 
          return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
        case 256: 
          return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
        case 128: 
          return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
        case 64: 
          return "ACTION_ACCESSIBILITY_FOCUS";
        case 32: 
          return "ACTION_LONG_CLICK";
        case 16: 
          return "ACTION_CLICK";
        case 8: 
          return "ACTION_CLEAR_SELECTION";
        }
        return "ACTION_SELECT";
      }
      return "ACTION_CLEAR_FOCUS";
    }
    return "ACTION_FOCUS";
  }
  
  public static ClickableSpan[] m(CharSequence paramCharSequence)
  {
    if ((paramCharSequence instanceof Spanned)) {
      return (ClickableSpan[])((Spanned)paramCharSequence).getSpans(0, paramCharSequence.length(), ClickableSpan.class);
    }
    return null;
  }
  
  public static g s0(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    return new g(paramAccessibilityNodeInfo);
  }
  
  private boolean t()
  {
    return e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty() ^ true;
  }
  
  public boolean A()
  {
    return this.a.isLongClickable();
  }
  
  public boolean B()
  {
    return this.a.isPassword();
  }
  
  public boolean C()
  {
    return this.a.isScrollable();
  }
  
  public boolean D()
  {
    return this.a.isSelected();
  }
  
  public boolean E()
  {
    return this.a.isShowingHintText();
  }
  
  public boolean I(int paramInt, Bundle paramBundle)
  {
    return this.a.performAction(paramInt, paramBundle);
  }
  
  public void J()
  {
    this.a.recycle();
  }
  
  public boolean K(a parama)
  {
    return this.a.removeAction((AccessibilityNodeInfo.AccessibilityAction)parama.a);
  }
  
  public void L(boolean paramBoolean)
  {
    this.a.setAccessibilityFocused(paramBoolean);
  }
  
  @Deprecated
  public void N(Rect paramRect)
  {
    this.a.setBoundsInParent(paramRect);
  }
  
  public void O(Rect paramRect)
  {
    this.a.setBoundsInScreen(paramRect);
  }
  
  public void P(boolean paramBoolean)
  {
    this.a.setCheckable(paramBoolean);
  }
  
  public void Q(boolean paramBoolean)
  {
    this.a.setChecked(paramBoolean);
  }
  
  public void R(CharSequence paramCharSequence)
  {
    this.a.setClassName(paramCharSequence);
  }
  
  public void S(boolean paramBoolean)
  {
    this.a.setClickable(paramBoolean);
  }
  
  public void T(Object paramObject)
  {
    AccessibilityNodeInfo localAccessibilityNodeInfo = this.a;
    if (paramObject == null) {
      paramObject = null;
    } else {
      paramObject = (AccessibilityNodeInfo.CollectionInfo)((b)paramObject).a;
    }
    localAccessibilityNodeInfo.setCollectionInfo(paramObject);
  }
  
  public void U(Object paramObject)
  {
    AccessibilityNodeInfo localAccessibilityNodeInfo = this.a;
    if (paramObject == null) {
      paramObject = null;
    } else {
      paramObject = (AccessibilityNodeInfo.CollectionItemInfo)((c)paramObject).a;
    }
    localAccessibilityNodeInfo.setCollectionItemInfo(paramObject);
  }
  
  public void V(CharSequence paramCharSequence)
  {
    this.a.setContentDescription(paramCharSequence);
  }
  
  public void W(boolean paramBoolean)
  {
    this.a.setDismissable(paramBoolean);
  }
  
  public void X(boolean paramBoolean)
  {
    this.a.setEnabled(paramBoolean);
  }
  
  public void Y(CharSequence paramCharSequence)
  {
    this.a.setError(paramCharSequence);
  }
  
  public void Z(boolean paramBoolean)
  {
    this.a.setFocusable(paramBoolean);
  }
  
  public void a(int paramInt)
  {
    this.a.addAction(paramInt);
  }
  
  public void a0(boolean paramBoolean)
  {
    this.a.setFocused(paramBoolean);
  }
  
  public void b(a parama)
  {
    this.a.addAction((AccessibilityNodeInfo.AccessibilityAction)parama.a);
  }
  
  public void b0(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      f.a(this.a, paramBoolean);
    } else {
      M(2, paramBoolean);
    }
  }
  
  public void c(View paramView, int paramInt)
  {
    this.a.addChild(paramView, paramInt);
  }
  
  public void c0(CharSequence paramCharSequence)
  {
    this.a.setHintText(paramCharSequence);
  }
  
  public void d(CharSequence paramCharSequence, View paramView) {}
  
  public void d0(int paramInt)
  {
    this.a.setMaxTextLength(paramInt);
  }
  
  public void e0(CharSequence paramCharSequence)
  {
    this.a.setPackageName(paramCharSequence);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (!(paramObject instanceof g)) {
      return false;
    }
    g localg = (g)paramObject;
    paramObject = this.a;
    if (paramObject == null)
    {
      if (localg.a != null) {
        return false;
      }
    }
    else if (!paramObject.equals(localg.a)) {
      return false;
    }
    if (this.c != localg.c) {
      return false;
    }
    return this.b == localg.b;
  }
  
  public List<a> f()
  {
    List localList = this.a.getActionList();
    if (localList != null)
    {
      ArrayList localArrayList = new ArrayList();
      int i = localList.size();
      for (int j = 0; j < i; j++) {
        localArrayList.add(new a(localList.get(j)));
      }
      return localArrayList;
    }
    return Collections.emptyList();
  }
  
  public void f0(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      d.a(this.a, paramCharSequence);
    } else {
      this.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", paramCharSequence);
    }
  }
  
  public void g0(View paramView)
  {
    this.b = -1;
    this.a.setParent(paramView);
  }
  
  public int h()
  {
    return this.a.getActions();
  }
  
  public void h0(View paramView, int paramInt)
  {
    this.b = paramInt;
    this.a.setParent(paramView, paramInt);
  }
  
  public int hashCode()
  {
    AccessibilityNodeInfo localAccessibilityNodeInfo = this.a;
    int i;
    if (localAccessibilityNodeInfo == null) {
      i = 0;
    } else {
      i = localAccessibilityNodeInfo.hashCode();
    }
    return i;
  }
  
  @Deprecated
  public void i(Rect paramRect)
  {
    this.a.getBoundsInParent(paramRect);
  }
  
  public void i0(d paramd)
  {
    this.a.setRangeInfo((AccessibilityNodeInfo.RangeInfo)paramd.a);
  }
  
  public void j(Rect paramRect)
  {
    this.a.getBoundsInScreen(paramRect);
  }
  
  public void j0(CharSequence paramCharSequence)
  {
    this.a.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", paramCharSequence);
  }
  
  public int k()
  {
    return this.a.getChildCount();
  }
  
  public void k0(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      c.a(this.a, paramBoolean);
    } else {
      M(1, paramBoolean);
    }
  }
  
  public CharSequence l()
  {
    return this.a.getClassName();
  }
  
  public void l0(boolean paramBoolean)
  {
    this.a.setScrollable(paramBoolean);
  }
  
  public void m0(boolean paramBoolean)
  {
    this.a.setShowingHintText(paramBoolean);
  }
  
  public c n()
  {
    AccessibilityNodeInfo.CollectionItemInfo localCollectionItemInfo = this.a.getCollectionItemInfo();
    if (localCollectionItemInfo != null) {
      return new c(localCollectionItemInfo);
    }
    return null;
  }
  
  public void n0(View paramView, int paramInt)
  {
    this.c = paramInt;
    this.a.setSource(paramView, paramInt);
  }
  
  public CharSequence o()
  {
    return this.a.getContentDescription();
  }
  
  public void o0(CharSequence paramCharSequence)
  {
    if (androidx.core.os.a.b()) {
      e.a(this.a, paramCharSequence);
    } else {
      this.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", paramCharSequence);
    }
  }
  
  public Bundle p()
  {
    return this.a.getExtras();
  }
  
  public void p0(CharSequence paramCharSequence)
  {
    this.a.setText(paramCharSequence);
  }
  
  public CharSequence q()
  {
    return this.a.getPackageName();
  }
  
  public void q0(boolean paramBoolean)
  {
    this.a.setVisibleToUser(paramBoolean);
  }
  
  public CharSequence r()
  {
    if (t())
    {
      List localList1 = e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
      List localList2 = e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
      List localList3 = e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
      List localList4 = e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
      Object localObject = this.a.getText();
      int i = this.a.getText().length();
      int j = 0;
      localObject = new SpannableString(TextUtils.substring((CharSequence)localObject, 0, i));
      while (j < localList1.size())
      {
        ((Spannable)localObject).setSpan(new a(((Integer)localList4.get(j)).intValue(), this, p().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer)localList1.get(j)).intValue(), ((Integer)localList2.get(j)).intValue(), ((Integer)localList3.get(j)).intValue());
        j++;
      }
      return localObject;
    }
    return this.a.getText();
  }
  
  public AccessibilityNodeInfo r0()
  {
    return this.a;
  }
  
  public String s()
  {
    return this.a.getViewIdResourceName();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Object localObject1 = new Rect();
    i((Rect)localObject1);
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("; boundsInParent: ");
    ((StringBuilder)localObject2).append(localObject1);
    localStringBuilder.append(((StringBuilder)localObject2).toString());
    j((Rect)localObject1);
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("; boundsInScreen: ");
    ((StringBuilder)localObject2).append(localObject1);
    localStringBuilder.append(((StringBuilder)localObject2).toString());
    localStringBuilder.append("; packageName: ");
    localStringBuilder.append(q());
    localStringBuilder.append("; className: ");
    localStringBuilder.append(l());
    localStringBuilder.append("; text: ");
    localStringBuilder.append(r());
    localStringBuilder.append("; contentDescription: ");
    localStringBuilder.append(o());
    localStringBuilder.append("; viewId: ");
    localStringBuilder.append(s());
    localStringBuilder.append("; checkable: ");
    localStringBuilder.append(u());
    localStringBuilder.append("; checked: ");
    localStringBuilder.append(v());
    localStringBuilder.append("; focusable: ");
    localStringBuilder.append(y());
    localStringBuilder.append("; focused: ");
    localStringBuilder.append(z());
    localStringBuilder.append("; selected: ");
    localStringBuilder.append(D());
    localStringBuilder.append("; clickable: ");
    localStringBuilder.append(w());
    localStringBuilder.append("; longClickable: ");
    localStringBuilder.append(A());
    localStringBuilder.append("; enabled: ");
    localStringBuilder.append(x());
    localStringBuilder.append("; password: ");
    localStringBuilder.append(B());
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("; scrollable: ");
    ((StringBuilder)localObject1).append(C());
    localStringBuilder.append(((StringBuilder)localObject1).toString());
    localStringBuilder.append("; [");
    List localList = f();
    for (int i = 0; i < localList.size(); i++)
    {
      a locala = (a)localList.get(i);
      localObject2 = g(locala.b());
      localObject1 = localObject2;
      if (((String)localObject2).equals("ACTION_UNKNOWN"))
      {
        localObject1 = localObject2;
        if (locala.c() != null) {
          localObject1 = locala.c().toString();
        }
      }
      localStringBuilder.append((String)localObject1);
      if (i != localList.size() - 1) {
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public boolean u()
  {
    return this.a.isCheckable();
  }
  
  public boolean v()
  {
    return this.a.isChecked();
  }
  
  public boolean w()
  {
    return this.a.isClickable();
  }
  
  public boolean x()
  {
    return this.a.isEnabled();
  }
  
  public boolean y()
  {
    return this.a.isFocusable();
  }
  
  public boolean z()
  {
    return this.a.isFocused();
  }
  
  public static class a
  {
    public static final a A;
    public static final a B;
    public static final a C;
    public static final a D;
    public static final a E;
    public static final a F;
    public static final a G;
    public static final a H;
    public static final a I;
    public static final a J;
    public static final a K;
    public static final a L;
    public static final a M;
    public static final a N;
    public static final a O;
    public static final a P;
    public static final a Q;
    public static final a e;
    public static final a f;
    public static final a g;
    public static final a h;
    public static final a i;
    public static final a j;
    public static final a k;
    public static final a l;
    public static final a m;
    public static final a n;
    public static final a o;
    public static final a p;
    public static final a q;
    public static final a r;
    public static final a s;
    public static final a t;
    public static final a u;
    public static final a v;
    public static final a w;
    public static final a x;
    public static final a y;
    public static final a z;
    final Object a;
    private final int b;
    private final Class<? extends j.a> c;
    protected final j d;
    
    static
    {
      Object localObject1 = null;
      e = new a(1, null);
      f = new a(2, null);
      g = new a(4, null);
      h = new a(8, null);
      i = new a(16, null);
      j = new a(32, null);
      k = new a(64, null);
      l = new a(128, null);
      m = new a(256, null, j.b.class);
      n = new a(512, null, j.b.class);
      o = new a(1024, null, j.c.class);
      p = new a(2048, null, j.c.class);
      q = new a(4096, null);
      r = new a(8192, null);
      s = new a(16384, null);
      t = new a(32768, null);
      u = new a(65536, null);
      v = new a(131072, null, j.g.class);
      w = new a(262144, null);
      x = new a(524288, null);
      y = new a(1048576, null);
      z = new a(2097152, null, j.h.class);
      int i1 = Build.VERSION.SDK_INT;
      A = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, 16908342, null, null, null);
      B = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, 16908343, null, null, j.e.class);
      C = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, 16908344, null, null, null);
      D = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, 16908345, null, null, null);
      E = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, 16908346, null, null, null);
      F = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, 16908347, null, null, null);
      if (i1 >= 29) {
        localObject2 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP;
      } else {
        localObject2 = null;
      }
      G = new a(localObject2, 16908358, null, null, null);
      if (i1 >= 29) {
        localObject2 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN;
      } else {
        localObject2 = null;
      }
      H = new a(localObject2, 16908359, null, null, null);
      if (i1 >= 29) {
        localObject2 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT;
      } else {
        localObject2 = null;
      }
      I = new a(localObject2, 16908360, null, null, null);
      if (i1 >= 29) {
        localObject2 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT;
      } else {
        localObject2 = null;
      }
      J = new a(localObject2, 16908361, null, null, null);
      K = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, 16908348, null, null, null);
      L = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, 16908349, null, null, j.f.class);
      M = new a(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, 16908354, null, null, j.d.class);
      if (i1 >= 28) {
        localObject2 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP;
      } else {
        localObject2 = null;
      }
      N = new a(localObject2, 16908356, null, null, null);
      if (i1 >= 28) {
        localObject2 = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
      } else {
        localObject2 = null;
      }
      O = new a(localObject2, 16908357, null, null, null);
      if (i1 >= 30) {
        localObject2 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD;
      } else {
        localObject2 = null;
      }
      P = new a(localObject2, 16908362, null, null, null);
      Object localObject2 = localObject1;
      if (i1 >= 30) {
        localObject2 = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
      }
      Q = new a(localObject2, 16908372, null, null, null);
    }
    
    public a(int paramInt, CharSequence paramCharSequence)
    {
      this(null, paramInt, paramCharSequence, null, null);
    }
    
    private a(int paramInt, CharSequence paramCharSequence, Class<? extends j.a> paramClass)
    {
      this(null, paramInt, paramCharSequence, null, paramClass);
    }
    
    a(Object paramObject)
    {
      this(paramObject, 0, null, null, null);
    }
    
    a(Object paramObject, int paramInt, CharSequence paramCharSequence, j paramj, Class<? extends j.a> paramClass)
    {
      this.b = paramInt;
      this.d = paramj;
      if (paramObject == null) {
        this.a = new AccessibilityNodeInfo.AccessibilityAction(paramInt, paramCharSequence);
      } else {
        this.a = paramObject;
      }
      this.c = paramClass;
    }
    
    public a a(CharSequence paramCharSequence, j paramj)
    {
      return new a(null, this.b, paramCharSequence, paramj, this.c);
    }
    
    public int b()
    {
      return ((AccessibilityNodeInfo.AccessibilityAction)this.a).getId();
    }
    
    public CharSequence c()
    {
      return ((AccessibilityNodeInfo.AccessibilityAction)this.a).getLabel();
    }
    
    public boolean d(View paramView, Bundle paramBundle)
    {
      if (this.d != null)
      {
        Object localObject1 = null;
        Object localObject2 = null;
        Object localObject4 = this.c;
        Bundle localBundle;
        if (localObject4 != null)
        {
          try
          {
            localObject1 = (j.a)((Class)localObject4).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            try
            {
              ((j.a)localObject1).a(paramBundle);
            }
            catch (Exception localException2)
            {
              paramBundle = (Bundle)localObject1;
              localObject1 = localException2;
            }
            localObject3 = this.c;
          }
          catch (Exception localException1)
          {
            paramBundle = localException2;
          }
          Object localObject3;
          if (localObject3 == null) {
            localObject3 = "null";
          } else {
            localObject3 = ((Class)localObject3).getName();
          }
          localObject4 = new StringBuilder();
          ((StringBuilder)localObject4).append("Failed to execute command with argument class ViewCommandArgument: ");
          ((StringBuilder)localObject4).append((String)localObject3);
          Log.e("A11yActionCompat", ((StringBuilder)localObject4).toString(), localException1);
          localBundle = paramBundle;
        }
        return this.d.perform(paramView, localBundle);
      }
      return false;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof a)) {
        return false;
      }
      paramObject = (a)paramObject;
      Object localObject = this.a;
      if (localObject == null)
      {
        if (paramObject.a != null) {
          return false;
        }
      }
      else if (!localObject.equals(paramObject.a)) {
        return false;
      }
      return true;
    }
    
    public int hashCode()
    {
      Object localObject = this.a;
      int i1;
      if (localObject != null) {
        i1 = localObject.hashCode();
      } else {
        i1 = 0;
      }
      return i1;
    }
  }
  
  public static class b
  {
    final Object a;
    
    b(Object paramObject)
    {
      this.a = paramObject;
    }
    
    public static b a(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      return new b(AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, paramBoolean));
    }
    
    public static b b(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return new b(AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, paramBoolean, paramInt3));
    }
  }
  
  public static class c
  {
    final Object a;
    
    c(Object paramObject)
    {
      this.a = paramObject;
    }
    
    public static c f(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
    {
      return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2));
    }
    
    public int a()
    {
      return ((AccessibilityNodeInfo.CollectionItemInfo)this.a).getColumnIndex();
    }
    
    public int b()
    {
      return ((AccessibilityNodeInfo.CollectionItemInfo)this.a).getColumnSpan();
    }
    
    public int c()
    {
      return ((AccessibilityNodeInfo.CollectionItemInfo)this.a).getRowIndex();
    }
    
    public int d()
    {
      return ((AccessibilityNodeInfo.CollectionItemInfo)this.a).getRowSpan();
    }
    
    public boolean e()
    {
      return ((AccessibilityNodeInfo.CollectionItemInfo)this.a).isSelected();
    }
  }
  
  public static class d
  {
    final Object a;
    
    d(Object paramObject)
    {
      this.a = paramObject;
    }
    
    public static d a(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
    {
      return new d(AccessibilityNodeInfo.RangeInfo.obtain(paramInt, paramFloat1, paramFloat2, paramFloat3));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.accessibility.g
 * JD-Core Version:    0.7.0.1
 */