package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor.Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour;
import androidx.constraintlayout.core.widgets.analyzer.b.a;
import androidx.constraintlayout.core.widgets.analyzer.b.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class ConstraintLayout
  extends ViewGroup
{
  private static k D;
  SparseArray<View> a = new SparseArray();
  private ArrayList<b> b = new ArrayList(4);
  protected androidx.constraintlayout.core.widgets.d c = new androidx.constraintlayout.core.widgets.d();
  private int d = 0;
  private int e = 0;
  private int f = 2147483647;
  private int g = 2147483647;
  protected boolean h = true;
  private int i = 257;
  private d j = null;
  protected c k = null;
  private int l = -1;
  private HashMap<String, Integer> m = new HashMap();
  private int n = -1;
  private int o = -1;
  int p = -1;
  int q = -1;
  int r = 0;
  int v = 0;
  private SparseArray<ConstraintWidget> w = new SparseArray();
  c x = new c(this);
  private int y = 0;
  private int z = 0;
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    j(paramAttributeSet, 0, 0);
  }
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    j(paramAttributeSet, paramInt, 0);
  }
  
  private final ConstraintWidget g(int paramInt)
  {
    if (paramInt == 0) {
      return this.c;
    }
    View localView = (View)this.a.get(paramInt);
    Object localObject = localView;
    if (localView == null)
    {
      localView = findViewById(paramInt);
      localObject = localView;
      if (localView != null)
      {
        localObject = localView;
        if (localView != this)
        {
          localObject = localView;
          if (localView.getParent() == this)
          {
            onViewAdded(localView);
            localObject = localView;
          }
        }
      }
    }
    if (localObject == this) {
      return this.c;
    }
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = ((b)((View)localObject).getLayoutParams()).v0;
    }
    return localObject;
  }
  
  private int getPaddingWidth()
  {
    int i1 = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
    int i2 = Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd());
    if (i2 > 0) {
      i1 = i2;
    }
    return i1;
  }
  
  public static k getSharedValues()
  {
    if (D == null) {
      D = new k();
    }
    return D;
  }
  
  private void j(AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this.c.B0(this);
    this.c.V1(this.x);
    this.a.put(getId(), this);
    this.j = null;
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, j.n1, paramInt1, paramInt2);
      paramInt2 = paramAttributeSet.getIndexCount();
      for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++)
      {
        int i1 = paramAttributeSet.getIndex(paramInt1);
        if (i1 == j.x1)
        {
          this.d = paramAttributeSet.getDimensionPixelOffset(i1, this.d);
        }
        else if (i1 == j.y1)
        {
          this.e = paramAttributeSet.getDimensionPixelOffset(i1, this.e);
        }
        else if (i1 == j.v1)
        {
          this.f = paramAttributeSet.getDimensionPixelOffset(i1, this.f);
        }
        else if (i1 == j.w1)
        {
          this.g = paramAttributeSet.getDimensionPixelOffset(i1, this.g);
        }
        else if (i1 == j.g3)
        {
          this.i = paramAttributeSet.getInt(i1, this.i);
        }
        else if (i1 == j.b2)
        {
          i1 = paramAttributeSet.getResourceId(i1, 0);
          if (i1 != 0) {
            try
            {
              m(i1);
            }
            catch (Resources.NotFoundException localNotFoundException1)
            {
              this.k = null;
            }
          }
        }
        else if (i1 == j.F1)
        {
          i1 = paramAttributeSet.getResourceId(i1, 0);
          try
          {
            d locald = new androidx/constraintlayout/widget/d;
            locald.<init>();
            this.j = locald;
            locald.q(getContext(), i1);
          }
          catch (Resources.NotFoundException localNotFoundException2)
          {
            this.j = null;
          }
          this.l = i1;
        }
      }
      paramAttributeSet.recycle();
    }
    this.c.W1(this.i);
  }
  
  private void l()
  {
    this.h = true;
    this.n = -1;
    this.o = -1;
    this.p = -1;
    this.q = -1;
    this.r = 0;
    this.v = 0;
  }
  
  private void p()
  {
    boolean bool = isInEditMode();
    int i1 = getChildCount();
    Object localObject1;
    for (int i2 = 0; i2 < i1; i2++)
    {
      localObject1 = i(getChildAt(i2));
      if (localObject1 != null) {
        ((ConstraintWidget)localObject1).t0();
      }
    }
    if (bool)
    {
      i2 = 0;
      while (i2 < i1)
      {
        Object localObject2 = getChildAt(i2);
        try
        {
          localObject3 = getResources().getResourceName(((View)localObject2).getId());
          q(0, localObject3, Integer.valueOf(((View)localObject2).getId()));
          i3 = ((String)localObject3).indexOf('/');
          localObject1 = localObject3;
          if (i3 != -1) {
            localObject1 = ((String)localObject3).substring(i3 + 1);
          }
          g(((View)localObject2).getId()).C0((String)localObject1);
          label138:
          i2++;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          Object localObject3;
          int i3;
          break label138;
        }
      }
    }
    else
    {
      if (this.l != -1) {
        for (i2 = 0; i2 < i1; i2++)
        {
          localObject1 = getChildAt(i2);
          if ((((View)localObject1).getId() == this.l) && ((localObject1 instanceof e))) {
            this.j = ((e)localObject1).getConstraintSet();
          }
        }
      }
      localObject1 = this.j;
      if (localObject1 != null) {
        ((d)localObject1).d(this, true);
      }
      this.c.u1();
      i3 = this.b.size();
      if (i3 > 0) {
        for (i2 = 0; i2 < i3; i2++) {
          ((b)this.b.get(i2)).r(this);
        }
      }
      for (i2 = 0; i2 < i1; i2++)
      {
        localObject1 = getChildAt(i2);
        if ((localObject1 instanceof h)) {
          ((h)localObject1).b(this);
        }
      }
      this.w.clear();
      this.w.put(0, this.c);
      this.w.put(getId(), this.c);
      for (i2 = 0; i2 < i1; i2++)
      {
        localObject3 = getChildAt(i2);
        localObject1 = i((View)localObject3);
        this.w.put(((View)localObject3).getId(), localObject1);
      }
      for (i2 = 0; i2 < i1; i2++)
      {
        localObject3 = getChildAt(i2);
        localObject2 = i((View)localObject3);
        if (localObject2 != null)
        {
          localObject1 = (b)((View)localObject3).getLayoutParams();
          this.c.b((ConstraintWidget)localObject2);
          c(bool, (View)localObject3, (ConstraintWidget)localObject2, (b)localObject1, this.w);
        }
      }
      return;
    }
  }
  
  private void s(ConstraintWidget paramConstraintWidget, b paramb, SparseArray<ConstraintWidget> paramSparseArray, int paramInt, ConstraintAnchor.Type paramType)
  {
    Object localObject = (View)this.a.get(paramInt);
    paramSparseArray = (ConstraintWidget)paramSparseArray.get(paramInt);
    if ((paramSparseArray != null) && (localObject != null) && ((((View)localObject).getLayoutParams() instanceof b)))
    {
      paramb.g0 = true;
      ConstraintAnchor.Type localType = ConstraintAnchor.Type.BASELINE;
      if (paramType == localType)
      {
        localObject = (b)((View)localObject).getLayoutParams();
        ((b)localObject).g0 = true;
        ((b)localObject).v0.K0(true);
      }
      paramConstraintWidget.o(localType).b(paramSparseArray.o(paramType), paramb.D, paramb.C, true);
      paramConstraintWidget.K0(true);
      paramConstraintWidget.o(ConstraintAnchor.Type.TOP).q();
      paramConstraintWidget.o(ConstraintAnchor.Type.BOTTOM).q();
    }
  }
  
  private boolean t()
  {
    int i1 = getChildCount();
    boolean bool1 = false;
    boolean bool2;
    for (int i2 = 0;; i2++)
    {
      bool2 = bool1;
      if (i2 >= i1) {
        break;
      }
      if (getChildAt(i2).isLayoutRequested())
      {
        bool2 = true;
        break;
      }
    }
    if (bool2) {
      p();
    }
    return bool2;
  }
  
  protected void c(boolean paramBoolean, View paramView, ConstraintWidget paramConstraintWidget, b paramb, SparseArray<ConstraintWidget> paramSparseArray)
  {
    paramb.b();
    paramb.w0 = false;
    paramConstraintWidget.j1(paramView.getVisibility());
    if (paramb.j0)
    {
      paramConstraintWidget.T0(true);
      paramConstraintWidget.j1(8);
    }
    paramConstraintWidget.B0(paramView);
    if ((paramView instanceof b)) {
      ((b)paramView).n(paramConstraintWidget, this.c.P1());
    }
    int i1;
    int i2;
    float f1;
    if (paramb.h0)
    {
      paramView = (androidx.constraintlayout.core.widgets.f)paramConstraintWidget;
      i1 = paramb.s0;
      i2 = paramb.t0;
      f1 = paramb.u0;
      if (f1 != -1.0F) {
        paramView.z1(f1);
      } else if (i1 != -1) {
        paramView.x1(i1);
      } else if (i2 != -1) {
        paramView.y1(i2);
      }
    }
    else
    {
      i1 = paramb.l0;
      int i3 = paramb.m0;
      int i4 = paramb.n0;
      int i5 = paramb.o0;
      i2 = paramb.p0;
      int i6 = paramb.q0;
      f1 = paramb.r0;
      int i7 = paramb.p;
      if (i7 != -1)
      {
        paramView = (ConstraintWidget)paramSparseArray.get(i7);
        if (paramView != null) {
          paramConstraintWidget.l(paramView, paramb.r, paramb.q);
        }
      }
      else
      {
        Object localObject;
        if (i1 != -1)
        {
          localObject = (ConstraintWidget)paramSparseArray.get(i1);
          if (localObject != null)
          {
            paramView = ConstraintAnchor.Type.LEFT;
            paramConstraintWidget.e0(paramView, (ConstraintWidget)localObject, paramView, paramb.leftMargin, i2);
          }
        }
        else if (i3 != -1)
        {
          paramView = (ConstraintWidget)paramSparseArray.get(i3);
          if (paramView != null) {
            paramConstraintWidget.e0(ConstraintAnchor.Type.LEFT, paramView, ConstraintAnchor.Type.RIGHT, paramb.leftMargin, i2);
          }
        }
        if (i4 != -1)
        {
          paramView = (ConstraintWidget)paramSparseArray.get(i4);
          if (paramView != null) {
            paramConstraintWidget.e0(ConstraintAnchor.Type.RIGHT, paramView, ConstraintAnchor.Type.LEFT, paramb.rightMargin, i6);
          }
        }
        else if (i5 != -1)
        {
          paramView = (ConstraintWidget)paramSparseArray.get(i5);
          if (paramView != null)
          {
            localObject = ConstraintAnchor.Type.RIGHT;
            paramConstraintWidget.e0((ConstraintAnchor.Type)localObject, paramView, (ConstraintAnchor.Type)localObject, paramb.rightMargin, i6);
          }
        }
        i2 = paramb.i;
        if (i2 != -1)
        {
          paramView = (ConstraintWidget)paramSparseArray.get(i2);
          if (paramView != null)
          {
            localObject = ConstraintAnchor.Type.TOP;
            paramConstraintWidget.e0((ConstraintAnchor.Type)localObject, paramView, (ConstraintAnchor.Type)localObject, paramb.topMargin, paramb.x);
          }
        }
        else
        {
          i2 = paramb.j;
          if (i2 != -1)
          {
            paramView = (ConstraintWidget)paramSparseArray.get(i2);
            if (paramView != null) {
              paramConstraintWidget.e0(ConstraintAnchor.Type.TOP, paramView, ConstraintAnchor.Type.BOTTOM, paramb.topMargin, paramb.x);
            }
          }
        }
        i2 = paramb.k;
        if (i2 != -1)
        {
          paramView = (ConstraintWidget)paramSparseArray.get(i2);
          if (paramView != null) {
            paramConstraintWidget.e0(ConstraintAnchor.Type.BOTTOM, paramView, ConstraintAnchor.Type.TOP, paramb.bottomMargin, paramb.z);
          }
        }
        else
        {
          i2 = paramb.l;
          if (i2 != -1)
          {
            paramView = (ConstraintWidget)paramSparseArray.get(i2);
            if (paramView != null)
            {
              localObject = ConstraintAnchor.Type.BOTTOM;
              paramConstraintWidget.e0((ConstraintAnchor.Type)localObject, paramView, (ConstraintAnchor.Type)localObject, paramb.bottomMargin, paramb.z);
            }
          }
        }
        i2 = paramb.m;
        if (i2 != -1)
        {
          s(paramConstraintWidget, paramb, paramSparseArray, i2, ConstraintAnchor.Type.BASELINE);
        }
        else
        {
          i2 = paramb.n;
          if (i2 != -1)
          {
            s(paramConstraintWidget, paramb, paramSparseArray, i2, ConstraintAnchor.Type.TOP);
          }
          else
          {
            i2 = paramb.o;
            if (i2 != -1) {
              s(paramConstraintWidget, paramb, paramSparseArray, i2, ConstraintAnchor.Type.BOTTOM);
            }
          }
        }
        if (f1 >= 0.0F) {
          paramConstraintWidget.M0(f1);
        }
        f1 = paramb.H;
        if (f1 >= 0.0F) {
          paramConstraintWidget.d1(f1);
        }
      }
      if (paramBoolean)
      {
        i2 = paramb.X;
        if ((i2 != -1) || (paramb.Y != -1)) {
          paramConstraintWidget.b1(i2, paramb.Y);
        }
      }
      if (!paramb.e0)
      {
        if (paramb.width == -1)
        {
          if (paramb.a0) {
            paramConstraintWidget.P0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
          } else {
            paramConstraintWidget.P0(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
          }
          paramConstraintWidget.o(ConstraintAnchor.Type.LEFT).g = paramb.leftMargin;
          paramConstraintWidget.o(ConstraintAnchor.Type.RIGHT).g = paramb.rightMargin;
        }
        else
        {
          paramConstraintWidget.P0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
          paramConstraintWidget.k1(0);
        }
      }
      else
      {
        paramConstraintWidget.P0(ConstraintWidget.DimensionBehaviour.FIXED);
        paramConstraintWidget.k1(paramb.width);
        if (paramb.width == -2) {
          paramConstraintWidget.P0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
        }
      }
      if (!paramb.f0)
      {
        if (paramb.height == -1)
        {
          if (paramb.b0) {
            paramConstraintWidget.g1(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
          } else {
            paramConstraintWidget.g1(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
          }
          paramConstraintWidget.o(ConstraintAnchor.Type.TOP).g = paramb.topMargin;
          paramConstraintWidget.o(ConstraintAnchor.Type.BOTTOM).g = paramb.bottomMargin;
        }
        else
        {
          paramConstraintWidget.g1(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
          paramConstraintWidget.L0(0);
        }
      }
      else
      {
        paramConstraintWidget.g1(ConstraintWidget.DimensionBehaviour.FIXED);
        paramConstraintWidget.L0(paramb.height);
        if (paramb.height == -2) {
          paramConstraintWidget.g1(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
        }
      }
      paramConstraintWidget.D0(paramb.I);
      paramConstraintWidget.R0(paramb.L);
      paramConstraintWidget.i1(paramb.M);
      paramConstraintWidget.N0(paramb.N);
      paramConstraintWidget.e1(paramb.O);
      paramConstraintWidget.l1(paramb.d0);
      paramConstraintWidget.Q0(paramb.P, paramb.R, paramb.T, paramb.V);
      paramConstraintWidget.h1(paramb.Q, paramb.S, paramb.U, paramb.W);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof b;
  }
  
  protected b d()
  {
    return new b(-2, -2);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    Object localObject = this.b;
    int i1;
    int i2;
    if (localObject != null)
    {
      i1 = ((ArrayList)localObject).size();
      if (i1 > 0) {
        for (i2 = 0; i2 < i1; i2++) {
          ((b)this.b.get(i2)).q(this);
        }
      }
    }
    super.dispatchDraw(paramCanvas);
    if (isInEditMode())
    {
      float f1 = getWidth();
      float f2 = getHeight();
      i1 = getChildCount();
      for (i2 = 0; i2 < i1; i2++)
      {
        localObject = getChildAt(i2);
        if (((View)localObject).getVisibility() != 8)
        {
          localObject = ((View)localObject).getTag();
          if ((localObject != null) && ((localObject instanceof String)))
          {
            localObject = ((String)localObject).split(",");
            if (localObject.length == 4)
            {
              int i3 = Integer.parseInt(localObject[0]);
              int i4 = Integer.parseInt(localObject[1]);
              int i5 = Integer.parseInt(localObject[2]);
              int i6 = Integer.parseInt(localObject[3]);
              i3 = (int)(i3 / 1080.0F * f1);
              i4 = (int)(i4 / 1920.0F * f2);
              i5 = (int)(i5 / 1080.0F * f1);
              i6 = (int)(i6 / 1920.0F * f2);
              localObject = new Paint();
              ((Paint)localObject).setColor(-65536);
              float f3 = i3;
              float f4 = i4;
              float f5 = i3 + i5;
              paramCanvas.drawLine(f3, f4, f5, f4, (Paint)localObject);
              float f6 = i4 + i6;
              paramCanvas.drawLine(f5, f4, f5, f6, (Paint)localObject);
              paramCanvas.drawLine(f5, f6, f3, f6, (Paint)localObject);
              paramCanvas.drawLine(f3, f6, f3, f4, (Paint)localObject);
              ((Paint)localObject).setColor(-16711936);
              paramCanvas.drawLine(f3, f4, f5, f6, (Paint)localObject);
              paramCanvas.drawLine(f3, f6, f5, f4, (Paint)localObject);
            }
          }
        }
      }
    }
  }
  
  public b e(AttributeSet paramAttributeSet)
  {
    return new b(getContext(), paramAttributeSet);
  }
  
  public Object f(int paramInt, Object paramObject)
  {
    if ((paramInt == 0) && ((paramObject instanceof String)))
    {
      paramObject = (String)paramObject;
      HashMap localHashMap = this.m;
      if ((localHashMap != null) && (localHashMap.containsKey(paramObject))) {
        return this.m.get(paramObject);
      }
    }
    return null;
  }
  
  public void forceLayout()
  {
    l();
    super.forceLayout();
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new b(paramLayoutParams);
  }
  
  public int getMaxHeight()
  {
    return this.g;
  }
  
  public int getMaxWidth()
  {
    return this.f;
  }
  
  public int getMinHeight()
  {
    return this.e;
  }
  
  public int getMinWidth()
  {
    return this.d;
  }
  
  public int getOptimizationLevel()
  {
    return this.c.J1();
  }
  
  public String getSceneString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i1;
    if (this.c.o == null)
    {
      i1 = getId();
      if (i1 != -1)
      {
        localObject1 = getContext().getResources().getResourceEntryName(i1);
        this.c.o = ((String)localObject1);
      }
      else
      {
        this.c.o = "parent";
      }
    }
    if (this.c.t() == null)
    {
      localObject1 = this.c;
      ((ConstraintWidget)localObject1).C0(((ConstraintWidget)localObject1).o);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(" setDebugName ");
      ((StringBuilder)localObject1).append(this.c.t());
      Log.v("ConstraintLayout", ((StringBuilder)localObject1).toString());
    }
    Object localObject1 = this.c.r1().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)((Iterator)localObject1).next();
      Object localObject2 = (View)localConstraintWidget.s();
      if (localObject2 != null)
      {
        if (localConstraintWidget.o == null)
        {
          i1 = ((View)localObject2).getId();
          if (i1 != -1) {
            localConstraintWidget.o = getContext().getResources().getResourceEntryName(i1);
          }
        }
        if (localConstraintWidget.t() == null)
        {
          localConstraintWidget.C0(localConstraintWidget.o);
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(" setDebugName ");
          ((StringBuilder)localObject2).append(localConstraintWidget.t());
          Log.v("ConstraintLayout", ((StringBuilder)localObject2).toString());
        }
      }
    }
    this.c.O(localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public View h(int paramInt)
  {
    return (View)this.a.get(paramInt);
  }
  
  public final ConstraintWidget i(View paramView)
  {
    if (paramView == this) {
      return this.c;
    }
    if (paramView != null)
    {
      if ((paramView.getLayoutParams() instanceof b)) {
        return ((b)paramView.getLayoutParams()).v0;
      }
      paramView.setLayoutParams(generateLayoutParams(paramView.getLayoutParams()));
      if ((paramView.getLayoutParams() instanceof b)) {
        return ((b)paramView.getLayoutParams()).v0;
      }
    }
    return null;
  }
  
  protected boolean k()
  {
    int i1 = getContext().getApplicationInfo().flags;
    boolean bool1 = false;
    if ((i1 & 0x400000) != 0) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    boolean bool2 = bool1;
    if (i1 != 0)
    {
      bool2 = bool1;
      if (1 == getLayoutDirection()) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  protected void m(int paramInt)
  {
    this.k = new c(getContext(), this, paramInt);
  }
  
  protected void n(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    c localc = this.x;
    int i1 = localc.e;
    paramInt1 = View.resolveSizeAndState(paramInt3 + localc.d, paramInt1, 0);
    paramInt3 = View.resolveSizeAndState(paramInt4 + i1, paramInt2, 0);
    paramInt2 = Math.min(this.f, paramInt1 & 0xFFFFFF);
    paramInt3 = Math.min(this.g, paramInt3 & 0xFFFFFF);
    paramInt1 = paramInt2;
    if (paramBoolean1) {
      paramInt1 = paramInt2 | 0x1000000;
    }
    paramInt2 = paramInt3;
    if (paramBoolean2) {
      paramInt2 = paramInt3 | 0x1000000;
    }
    setMeasuredDimension(paramInt1, paramInt2);
    this.n = paramInt1;
    this.o = paramInt2;
  }
  
  protected void o(androidx.constraintlayout.core.widgets.d paramd, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = View.MeasureSpec.getMode(paramInt2);
    int i2 = View.MeasureSpec.getSize(paramInt2);
    int i3 = View.MeasureSpec.getMode(paramInt3);
    int i4 = View.MeasureSpec.getSize(paramInt3);
    int i5 = Math.max(0, getPaddingTop());
    int i6 = Math.max(0, getPaddingBottom());
    int i7 = i5 + i6;
    int i8 = getPaddingWidth();
    this.x.c(paramInt2, paramInt3, i5, i6, i8, i7);
    paramInt2 = Math.max(0, getPaddingStart());
    paramInt3 = Math.max(0, getPaddingEnd());
    if ((paramInt2 <= 0) && (paramInt3 <= 0)) {
      paramInt2 = Math.max(0, getPaddingLeft());
    } else if (k()) {
      paramInt2 = paramInt3;
    }
    paramInt3 = i2 - i8;
    i4 -= i7;
    r(paramd, i1, paramInt3, i3, i4);
    paramd.R1(paramInt1, i1, paramInt3, i3, i4, this.n, this.o, paramInt2, i5);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = getChildCount();
    paramBoolean = isInEditMode();
    paramInt2 = 0;
    for (paramInt1 = 0; paramInt1 < paramInt3; paramInt1++)
    {
      View localView = getChildAt(paramInt1);
      b localb = (b)localView.getLayoutParams();
      Object localObject = localb.v0;
      if (((localView.getVisibility() != 8) || (localb.h0) || (localb.i0) || (localb.k0) || (paramBoolean)) && (!localb.j0))
      {
        int i1 = ((ConstraintWidget)localObject).X();
        int i2 = ((ConstraintWidget)localObject).Y();
        int i3 = ((ConstraintWidget)localObject).W() + i1;
        paramInt4 = ((ConstraintWidget)localObject).x() + i2;
        localView.layout(i1, i2, i3, paramInt4);
        if ((localView instanceof h))
        {
          localObject = ((h)localView).getContent();
          if (localObject != null)
          {
            ((View)localObject).setVisibility(0);
            ((View)localObject).layout(i1, i2, i3, paramInt4);
          }
        }
      }
    }
    paramInt3 = this.b.size();
    if (paramInt3 > 0) {
      for (paramInt1 = paramInt2; paramInt1 < paramInt3; paramInt1++) {
        ((b)this.b.get(paramInt1)).o(this);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1;
    if (this.y == paramInt1) {
      i1 = this.z;
    }
    if (!this.h)
    {
      int i2 = getChildCount();
      for (i1 = 0; i1 < i2; i1++) {
        if (getChildAt(i1).isLayoutRequested())
        {
          this.h = true;
          break;
        }
      }
    }
    boolean bool = this.h;
    this.y = paramInt1;
    this.z = paramInt2;
    this.c.Y1(k());
    if (this.h)
    {
      this.h = false;
      if (t()) {
        this.c.a2();
      }
    }
    o(this.c, this.i, paramInt1, paramInt2);
    n(paramInt1, paramInt2, this.c.W(), this.c.x(), this.c.Q1(), this.c.O1());
  }
  
  public void onViewAdded(View paramView)
  {
    super.onViewAdded(paramView);
    Object localObject = i(paramView);
    if (((paramView instanceof g)) && (!(localObject instanceof androidx.constraintlayout.core.widgets.f)))
    {
      localObject = (b)paramView.getLayoutParams();
      androidx.constraintlayout.core.widgets.f localf = new androidx.constraintlayout.core.widgets.f();
      ((b)localObject).v0 = localf;
      ((b)localObject).h0 = true;
      localf.A1(((b)localObject).Z);
    }
    if ((paramView instanceof b))
    {
      localObject = (b)paramView;
      ((b)localObject).s();
      ((b)paramView.getLayoutParams()).i0 = true;
      if (!this.b.contains(localObject)) {
        this.b.add(localObject);
      }
    }
    this.a.put(paramView.getId(), paramView);
    this.h = true;
  }
  
  public void onViewRemoved(View paramView)
  {
    super.onViewRemoved(paramView);
    this.a.remove(paramView.getId());
    ConstraintWidget localConstraintWidget = i(paramView);
    this.c.t1(localConstraintWidget);
    this.b.remove(paramView);
    this.h = true;
  }
  
  public void q(int paramInt, Object paramObject1, Object paramObject2)
  {
    if ((paramInt == 0) && ((paramObject1 instanceof String)) && ((paramObject2 instanceof Integer)))
    {
      if (this.m == null) {
        this.m = new HashMap();
      }
      String str = (String)paramObject1;
      paramInt = str.indexOf("/");
      paramObject1 = str;
      if (paramInt != -1) {
        paramObject1 = str.substring(paramInt + 1);
      }
      paramInt = ((Integer)paramObject2).intValue();
      this.m.put(paramObject1, Integer.valueOf(paramInt));
    }
  }
  
  protected void r(androidx.constraintlayout.core.widgets.d paramd, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject1 = this.x;
    int i1 = ((c)localObject1).e;
    int i2 = ((c)localObject1).d;
    localObject1 = ConstraintWidget.DimensionBehaviour.FIXED;
    int i3 = getChildCount();
    Object localObject2;
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour;
    if (paramInt1 != -2147483648)
    {
      if (paramInt1 != 0) {
        if (paramInt1 != 1073741824) {
          localObject2 = localObject1;
        }
      }
      do
      {
        paramInt2 = 0;
        break;
        paramInt2 = Math.min(this.f - i2, paramInt2);
        localObject2 = localObject1;
        break;
        localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        localObject2 = localDimensionBehaviour;
      } while (i3 != 0);
      paramInt2 = Math.max(0, this.d);
      localObject2 = localDimensionBehaviour;
    }
    else
    {
      localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
      localObject2 = localDimensionBehaviour;
      if (i3 == 0)
      {
        paramInt2 = Math.max(0, this.d);
        localObject2 = localDimensionBehaviour;
      }
    }
    if (paramInt3 != -2147483648)
    {
      if (paramInt3 != 0) {
        if (paramInt3 == 1073741824) {}
      }
      do
      {
        paramInt4 = 0;
        break;
        paramInt4 = Math.min(this.g - i1, paramInt4);
        break;
        localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        localObject1 = localDimensionBehaviour;
      } while (i3 != 0);
      paramInt4 = Math.max(0, this.e);
      localObject1 = localDimensionBehaviour;
    }
    else
    {
      localDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
      localObject1 = localDimensionBehaviour;
      if (i3 == 0)
      {
        paramInt4 = Math.max(0, this.e);
        localObject1 = localDimensionBehaviour;
      }
    }
    if ((paramInt2 != paramd.W()) || (paramInt4 != paramd.x())) {
      paramd.N1();
    }
    paramd.m1(0);
    paramd.n1(0);
    paramd.X0(this.f - i2);
    paramd.W0(this.g - i1);
    paramd.a1(0);
    paramd.Z0(0);
    paramd.P0(localObject2);
    paramd.k1(paramInt2);
    paramd.g1((ConstraintWidget.DimensionBehaviour)localObject1);
    paramd.L0(paramInt4);
    paramd.a1(this.d - i2);
    paramd.Z0(this.e - i1);
  }
  
  public void requestLayout()
  {
    l();
    super.requestLayout();
  }
  
  public void setConstraintSet(d paramd)
  {
    this.j = paramd;
  }
  
  public void setId(int paramInt)
  {
    this.a.remove(getId());
    super.setId(paramInt);
    this.a.put(getId(), this);
  }
  
  public void setMaxHeight(int paramInt)
  {
    if (paramInt == this.g) {
      return;
    }
    this.g = paramInt;
    requestLayout();
  }
  
  public void setMaxWidth(int paramInt)
  {
    if (paramInt == this.f) {
      return;
    }
    this.f = paramInt;
    requestLayout();
  }
  
  public void setMinHeight(int paramInt)
  {
    if (paramInt == this.e) {
      return;
    }
    this.e = paramInt;
    requestLayout();
  }
  
  public void setMinWidth(int paramInt)
  {
    if (paramInt == this.d) {
      return;
    }
    this.d = paramInt;
    requestLayout();
  }
  
  public void setOnConstraintsChanged(f paramf)
  {
    c localc = this.k;
    if (localc != null) {
      localc.c(paramf);
    }
  }
  
  public void setOptimizationLevel(int paramInt)
  {
    this.i = paramInt;
    this.c.W1(paramInt);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public static class b
    extends ViewGroup.MarginLayoutParams
  {
    public int A = -2147483648;
    public int B = -2147483648;
    public int C = -2147483648;
    public int D = 0;
    boolean E = true;
    boolean F = true;
    public float G = 0.5F;
    public float H = 0.5F;
    public String I = null;
    float J = 0.0F;
    int K = 1;
    public float L = -1.0F;
    public float M = -1.0F;
    public int N = 0;
    public int O = 0;
    public int P = 0;
    public int Q = 0;
    public int R = 0;
    public int S = 0;
    public int T = 0;
    public int U = 0;
    public float V = 1.0F;
    public float W = 1.0F;
    public int X = -1;
    public int Y = -1;
    public int Z = -1;
    public int a = -1;
    public boolean a0 = false;
    public int b = -1;
    public boolean b0 = false;
    public float c = -1.0F;
    public String c0 = null;
    public boolean d = true;
    public int d0 = 0;
    public int e = -1;
    boolean e0 = true;
    public int f = -1;
    boolean f0 = true;
    public int g = -1;
    boolean g0 = false;
    public int h = -1;
    boolean h0 = false;
    public int i = -1;
    boolean i0 = false;
    public int j = -1;
    boolean j0 = false;
    public int k = -1;
    boolean k0 = false;
    public int l = -1;
    int l0 = -1;
    public int m = -1;
    int m0 = -1;
    public int n = -1;
    int n0 = -1;
    public int o = -1;
    int o0 = -1;
    public int p = -1;
    int p0 = -2147483648;
    public int q = 0;
    int q0 = -2147483648;
    public float r = 0.0F;
    float r0 = 0.5F;
    public int s = -1;
    int s0;
    public int t = -1;
    int t0;
    public int u = -1;
    float u0;
    public int v = -1;
    ConstraintWidget v0 = new ConstraintWidget();
    public int w = -2147483648;
    public boolean w0 = false;
    public int x = -2147483648;
    public int y = -2147483648;
    public int z = -2147483648;
    
    public b(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public b(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.n1);
      int i1 = paramContext.getIndexCount();
      for (int i2 = 0; i2 < i1; i2++)
      {
        int i3 = paramContext.getIndex(i2);
        int i4 = a.a.get(i3);
        switch (i4)
        {
        default: 
          switch (i4)
          {
          default: 
            switch (i4)
            {
            default: 
              break;
            case 67: 
              this.d = paramContext.getBoolean(i3, this.d);
              break;
            case 66: 
              this.d0 = paramContext.getInt(i3, this.d0);
              break;
            case 65: 
              d.t(this, paramContext, i3, 1);
              this.F = true;
              break;
            case 64: 
              d.t(this, paramContext, i3, 0);
              this.E = true;
            }
            break;
          case 55: 
            this.C = paramContext.getDimensionPixelSize(i3, this.C);
            break;
          case 54: 
            this.D = paramContext.getDimensionPixelSize(i3, this.D);
            break;
          case 53: 
            i4 = paramContext.getResourceId(i3, this.o);
            this.o = i4;
            if (i4 == -1) {
              this.o = paramContext.getInt(i3, -1);
            }
            break;
          case 52: 
            i4 = paramContext.getResourceId(i3, this.n);
            this.n = i4;
            if (i4 == -1) {
              this.n = paramContext.getInt(i3, -1);
            }
            break;
          case 51: 
            this.c0 = paramContext.getString(i3);
            break;
          case 50: 
            this.Y = paramContext.getDimensionPixelOffset(i3, this.Y);
            break;
          case 49: 
            this.X = paramContext.getDimensionPixelOffset(i3, this.X);
            break;
          case 48: 
            this.O = paramContext.getInt(i3, 0);
            break;
          case 47: 
            this.N = paramContext.getInt(i3, 0);
            break;
          case 46: 
            this.M = paramContext.getFloat(i3, this.M);
            break;
          case 45: 
            this.L = paramContext.getFloat(i3, this.L);
            break;
          case 44: 
            d.v(this, paramContext.getString(i3));
          }
          break;
        case 38: 
          this.W = Math.max(0.0F, paramContext.getFloat(i3, this.W));
          this.Q = 2;
          break;
        case 37: 
          try
          {
            this.U = paramContext.getDimensionPixelSize(i3, this.U);
          }
          catch (Exception paramAttributeSet)
          {
            if (paramContext.getInt(i3, this.U) != -2) {
              continue;
            }
          }
          this.U = -2;
          break;
        case 36: 
          try
          {
            this.S = paramContext.getDimensionPixelSize(i3, this.S);
          }
          catch (Exception paramAttributeSet)
          {
            if (paramContext.getInt(i3, this.S) != -2) {
              continue;
            }
          }
          this.S = -2;
          break;
        case 35: 
          this.V = Math.max(0.0F, paramContext.getFloat(i3, this.V));
          this.P = 2;
          break;
        case 34: 
          try
          {
            this.T = paramContext.getDimensionPixelSize(i3, this.T);
          }
          catch (Exception paramAttributeSet)
          {
            if (paramContext.getInt(i3, this.T) != -2) {
              continue;
            }
          }
          this.T = -2;
          break;
        case 33: 
          try
          {
            this.R = paramContext.getDimensionPixelSize(i3, this.R);
          }
          catch (Exception paramAttributeSet)
          {
            if (paramContext.getInt(i3, this.R) != -2) {
              continue;
            }
          }
          this.R = -2;
          break;
        case 32: 
          i3 = paramContext.getInt(i3, 0);
          this.Q = i3;
          if (i3 == 1) {
            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
          }
          break;
        case 31: 
          i3 = paramContext.getInt(i3, 0);
          this.P = i3;
          if (i3 == 1) {
            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
          }
          break;
        case 30: 
          this.H = paramContext.getFloat(i3, this.H);
          break;
        case 29: 
          this.G = paramContext.getFloat(i3, this.G);
          break;
        case 28: 
          this.b0 = paramContext.getBoolean(i3, this.b0);
          break;
        case 27: 
          this.a0 = paramContext.getBoolean(i3, this.a0);
          break;
        case 26: 
          this.B = paramContext.getDimensionPixelSize(i3, this.B);
          break;
        case 25: 
          this.A = paramContext.getDimensionPixelSize(i3, this.A);
          break;
        case 24: 
          this.z = paramContext.getDimensionPixelSize(i3, this.z);
          break;
        case 23: 
          this.y = paramContext.getDimensionPixelSize(i3, this.y);
          break;
        case 22: 
          this.x = paramContext.getDimensionPixelSize(i3, this.x);
          break;
        case 21: 
          this.w = paramContext.getDimensionPixelSize(i3, this.w);
          break;
        case 20: 
          i4 = paramContext.getResourceId(i3, this.v);
          this.v = i4;
          if (i4 == -1) {
            this.v = paramContext.getInt(i3, -1);
          }
          break;
        case 19: 
          i4 = paramContext.getResourceId(i3, this.u);
          this.u = i4;
          if (i4 == -1) {
            this.u = paramContext.getInt(i3, -1);
          }
          break;
        case 18: 
          i4 = paramContext.getResourceId(i3, this.t);
          this.t = i4;
          if (i4 == -1) {
            this.t = paramContext.getInt(i3, -1);
          }
          break;
        case 17: 
          i4 = paramContext.getResourceId(i3, this.s);
          this.s = i4;
          if (i4 == -1) {
            this.s = paramContext.getInt(i3, -1);
          }
          break;
        case 16: 
          i4 = paramContext.getResourceId(i3, this.m);
          this.m = i4;
          if (i4 == -1) {
            this.m = paramContext.getInt(i3, -1);
          }
          break;
        case 15: 
          i4 = paramContext.getResourceId(i3, this.l);
          this.l = i4;
          if (i4 == -1) {
            this.l = paramContext.getInt(i3, -1);
          }
          break;
        case 14: 
          i4 = paramContext.getResourceId(i3, this.k);
          this.k = i4;
          if (i4 == -1) {
            this.k = paramContext.getInt(i3, -1);
          }
          break;
        case 13: 
          i4 = paramContext.getResourceId(i3, this.j);
          this.j = i4;
          if (i4 == -1) {
            this.j = paramContext.getInt(i3, -1);
          }
          break;
        case 12: 
          i4 = paramContext.getResourceId(i3, this.i);
          this.i = i4;
          if (i4 == -1) {
            this.i = paramContext.getInt(i3, -1);
          }
          break;
        case 11: 
          i4 = paramContext.getResourceId(i3, this.h);
          this.h = i4;
          if (i4 == -1) {
            this.h = paramContext.getInt(i3, -1);
          }
          break;
        case 10: 
          i4 = paramContext.getResourceId(i3, this.g);
          this.g = i4;
          if (i4 == -1) {
            this.g = paramContext.getInt(i3, -1);
          }
          break;
        case 9: 
          i4 = paramContext.getResourceId(i3, this.f);
          this.f = i4;
          if (i4 == -1) {
            this.f = paramContext.getInt(i3, -1);
          }
          break;
        case 8: 
          i4 = paramContext.getResourceId(i3, this.e);
          this.e = i4;
          if (i4 == -1) {
            this.e = paramContext.getInt(i3, -1);
          }
          break;
        case 7: 
          this.c = paramContext.getFloat(i3, this.c);
          break;
        case 6: 
          this.b = paramContext.getDimensionPixelOffset(i3, this.b);
          break;
        case 5: 
          this.a = paramContext.getDimensionPixelOffset(i3, this.a);
          break;
        case 4: 
          float f1 = paramContext.getFloat(i3, this.r) % 360.0F;
          this.r = f1;
          if (f1 < 0.0F) {
            this.r = ((360.0F - f1) % 360.0F);
          }
          break;
        case 3: 
          this.q = paramContext.getDimensionPixelSize(i3, this.q);
          break;
        case 2: 
          i4 = paramContext.getResourceId(i3, this.p);
          this.p = i4;
          if (i4 == -1) {
            this.p = paramContext.getInt(i3, -1);
          }
          break;
        case 1: 
          this.Z = paramContext.getInt(i3, this.Z);
        }
      }
      paramContext.recycle();
      b();
    }
    
    public b(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public ConstraintWidget a()
    {
      return this.v0;
    }
    
    public void b()
    {
      this.h0 = false;
      this.e0 = true;
      this.f0 = true;
      int i1 = this.width;
      if ((i1 == -2) && (this.a0))
      {
        this.e0 = false;
        if (this.P == 0) {
          this.P = 1;
        }
      }
      int i2 = this.height;
      if ((i2 == -2) && (this.b0))
      {
        this.f0 = false;
        if (this.Q == 0) {
          this.Q = 1;
        }
      }
      if ((i1 == 0) || (i1 == -1))
      {
        this.e0 = false;
        if ((i1 == 0) && (this.P == 1))
        {
          this.width = -2;
          this.a0 = true;
        }
      }
      if ((i2 == 0) || (i2 == -1))
      {
        this.f0 = false;
        if ((i2 == 0) && (this.Q == 1))
        {
          this.height = -2;
          this.b0 = true;
        }
      }
      if ((this.c != -1.0F) || (this.a != -1) || (this.b != -1))
      {
        this.h0 = true;
        this.e0 = true;
        this.f0 = true;
        if (!(this.v0 instanceof androidx.constraintlayout.core.widgets.f)) {
          this.v0 = new androidx.constraintlayout.core.widgets.f();
        }
        ((androidx.constraintlayout.core.widgets.f)this.v0).A1(this.Z);
      }
    }
    
    @TargetApi(17)
    public void resolveLayoutDirection(int paramInt)
    {
      int i1 = this.leftMargin;
      int i2 = this.rightMargin;
      super.resolveLayoutDirection(paramInt);
      paramInt = getLayoutDirection();
      int i3 = 0;
      if (1 == paramInt) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      this.n0 = -1;
      this.o0 = -1;
      this.l0 = -1;
      this.m0 = -1;
      this.p0 = this.w;
      this.q0 = this.y;
      float f1 = this.G;
      this.r0 = f1;
      int i4 = this.a;
      this.s0 = i4;
      int i5 = this.b;
      this.t0 = i5;
      float f2 = this.c;
      this.u0 = f2;
      if (paramInt != 0)
      {
        paramInt = this.s;
        if (paramInt != -1) {
          this.n0 = paramInt;
        }
        for (;;)
        {
          paramInt = 1;
          break;
          int i6 = this.t;
          paramInt = i3;
          if (i6 == -1) {
            break;
          }
          this.o0 = i6;
        }
        i3 = this.u;
        if (i3 != -1)
        {
          this.m0 = i3;
          paramInt = 1;
        }
        i3 = this.v;
        if (i3 != -1)
        {
          this.l0 = i3;
          paramInt = 1;
        }
        i3 = this.A;
        if (i3 != -2147483648) {
          this.q0 = i3;
        }
        i3 = this.B;
        if (i3 != -2147483648) {
          this.p0 = i3;
        }
        if (paramInt != 0) {
          this.r0 = (1.0F - f1);
        }
        if ((this.h0) && (this.Z == 1) && (this.d)) {
          if (f2 != -1.0F)
          {
            this.u0 = (1.0F - f2);
            this.s0 = -1;
            this.t0 = -1;
          }
          else if (i4 != -1)
          {
            this.t0 = i4;
            this.s0 = -1;
            this.u0 = -1.0F;
          }
          else if (i5 != -1)
          {
            this.s0 = i5;
            this.t0 = -1;
            this.u0 = -1.0F;
          }
        }
      }
      else
      {
        paramInt = this.s;
        if (paramInt != -1) {
          this.m0 = paramInt;
        }
        paramInt = this.t;
        if (paramInt != -1) {
          this.l0 = paramInt;
        }
        paramInt = this.u;
        if (paramInt != -1) {
          this.n0 = paramInt;
        }
        paramInt = this.v;
        if (paramInt != -1) {
          this.o0 = paramInt;
        }
        paramInt = this.A;
        if (paramInt != -2147483648) {
          this.p0 = paramInt;
        }
        paramInt = this.B;
        if (paramInt != -2147483648) {
          this.q0 = paramInt;
        }
      }
      if ((this.u == -1) && (this.v == -1) && (this.t == -1) && (this.s == -1))
      {
        paramInt = this.g;
        if (paramInt != -1)
        {
          this.n0 = paramInt;
          if ((this.rightMargin <= 0) && (i2 > 0)) {
            this.rightMargin = i2;
          }
        }
        else
        {
          paramInt = this.h;
          if (paramInt != -1)
          {
            this.o0 = paramInt;
            if ((this.rightMargin <= 0) && (i2 > 0)) {
              this.rightMargin = i2;
            }
          }
        }
        paramInt = this.e;
        if (paramInt != -1)
        {
          this.l0 = paramInt;
          if ((this.leftMargin <= 0) && (i1 > 0)) {
            this.leftMargin = i1;
          }
        }
        else
        {
          paramInt = this.f;
          if (paramInt != -1)
          {
            this.m0 = paramInt;
            if ((this.leftMargin <= 0) && (i1 > 0)) {
              this.leftMargin = i1;
            }
          }
        }
      }
    }
    
    private static class a
    {
      public static final SparseIntArray a;
      
      static
      {
        SparseIntArray localSparseIntArray = new SparseIntArray();
        a = localSparseIntArray;
        localSparseIntArray.append(j.R2, 64);
        localSparseIntArray.append(j.u2, 65);
        localSparseIntArray.append(j.D2, 8);
        localSparseIntArray.append(j.E2, 9);
        localSparseIntArray.append(j.G2, 10);
        localSparseIntArray.append(j.H2, 11);
        localSparseIntArray.append(j.N2, 12);
        localSparseIntArray.append(j.M2, 13);
        localSparseIntArray.append(j.k2, 14);
        localSparseIntArray.append(j.j2, 15);
        localSparseIntArray.append(j.f2, 16);
        localSparseIntArray.append(j.h2, 52);
        localSparseIntArray.append(j.g2, 53);
        localSparseIntArray.append(j.l2, 2);
        localSparseIntArray.append(j.n2, 3);
        localSparseIntArray.append(j.m2, 4);
        localSparseIntArray.append(j.W2, 49);
        localSparseIntArray.append(j.X2, 50);
        localSparseIntArray.append(j.r2, 5);
        localSparseIntArray.append(j.s2, 6);
        localSparseIntArray.append(j.t2, 7);
        localSparseIntArray.append(j.a2, 67);
        localSparseIntArray.append(j.o1, 1);
        localSparseIntArray.append(j.I2, 17);
        localSparseIntArray.append(j.J2, 18);
        localSparseIntArray.append(j.q2, 19);
        localSparseIntArray.append(j.p2, 20);
        localSparseIntArray.append(j.b3, 21);
        localSparseIntArray.append(j.e3, 22);
        localSparseIntArray.append(j.c3, 23);
        localSparseIntArray.append(j.Z2, 24);
        localSparseIntArray.append(j.d3, 25);
        localSparseIntArray.append(j.a3, 26);
        localSparseIntArray.append(j.Y2, 55);
        localSparseIntArray.append(j.f3, 54);
        localSparseIntArray.append(j.z2, 29);
        localSparseIntArray.append(j.O2, 30);
        localSparseIntArray.append(j.o2, 44);
        localSparseIntArray.append(j.B2, 45);
        localSparseIntArray.append(j.Q2, 46);
        localSparseIntArray.append(j.A2, 47);
        localSparseIntArray.append(j.P2, 48);
        localSparseIntArray.append(j.d2, 27);
        localSparseIntArray.append(j.c2, 28);
        localSparseIntArray.append(j.S2, 31);
        localSparseIntArray.append(j.v2, 32);
        localSparseIntArray.append(j.U2, 33);
        localSparseIntArray.append(j.T2, 34);
        localSparseIntArray.append(j.V2, 35);
        localSparseIntArray.append(j.x2, 36);
        localSparseIntArray.append(j.w2, 37);
        localSparseIntArray.append(j.y2, 38);
        localSparseIntArray.append(j.C2, 39);
        localSparseIntArray.append(j.L2, 40);
        localSparseIntArray.append(j.F2, 41);
        localSparseIntArray.append(j.i2, 42);
        localSparseIntArray.append(j.e2, 43);
        localSparseIntArray.append(j.K2, 51);
        localSparseIntArray.append(j.h3, 66);
      }
    }
  }
  
  class c
    implements b.b
  {
    ConstraintLayout a;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    
    public c(ConstraintLayout paramConstraintLayout)
    {
      this.a = paramConstraintLayout;
    }
    
    private boolean d(int paramInt1, int paramInt2, int paramInt3)
    {
      if (paramInt1 == paramInt2) {
        return true;
      }
      int i = View.MeasureSpec.getMode(paramInt1);
      View.MeasureSpec.getSize(paramInt1);
      paramInt1 = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      return (paramInt1 == 1073741824) && ((i == -2147483648) || (i == 0)) && (paramInt3 == paramInt2);
    }
    
    public final void a()
    {
      int i = this.a.getChildCount();
      int j = 0;
      for (int k = 0; k < i; k++)
      {
        View localView = this.a.getChildAt(k);
        if ((localView instanceof h)) {
          ((h)localView).a(this.a);
        }
      }
      i = ConstraintLayout.b(this.a).size();
      if (i > 0) {
        for (k = j; k < i; k++) {
          ((b)ConstraintLayout.b(this.a).get(k)).p(this.a);
        }
      }
    }
    
    @SuppressLint({"WrongCall"})
    public final void b(ConstraintWidget paramConstraintWidget, b.a parama)
    {
      if (paramConstraintWidget == null) {
        return;
      }
      if ((paramConstraintWidget.V() == 8) && (!paramConstraintWidget.j0()))
      {
        parama.e = 0;
        parama.f = 0;
        parama.g = 0;
        return;
      }
      if (paramConstraintWidget.K() == null) {
        return;
      }
      Object localObject1 = parama.a;
      Object localObject2 = parama.b;
      int i = parama.c;
      int j = parama.d;
      int k = this.b + this.c;
      int m = this.d;
      View localView = (View)paramConstraintWidget.s();
      Object localObject3 = ConstraintLayout.a.a;
      int n = localObject3[localObject1.ordinal()];
      int i1;
      if (n != 1)
      {
        if (n != 2)
        {
          if (n != 3)
          {
            if (n != 4)
            {
              n = 0;
            }
            else
            {
              i = ViewGroup.getChildMeasureSpec(this.f, m, -2);
              if (paramConstraintWidget.w == 1) {
                m = 1;
              } else {
                m = 0;
              }
              i1 = parama.j;
              if (i1 != b.a.l)
              {
                n = i;
                if (i1 != b.a.m) {}
              }
              else
              {
                if (localView.getMeasuredHeight() == paramConstraintWidget.x()) {
                  n = 1;
                } else {
                  n = 0;
                }
                if ((parama.j != b.a.m) && (m != 0) && ((m == 0) || (n == 0)) && (!(localView instanceof h)) && (!paramConstraintWidget.n0())) {
                  m = 0;
                } else {
                  m = 1;
                }
                n = i;
                if (m != 0) {
                  n = View.MeasureSpec.makeMeasureSpec(paramConstraintWidget.W(), 1073741824);
                }
              }
            }
          }
          else {
            n = ViewGroup.getChildMeasureSpec(this.f, m + paramConstraintWidget.B(), -1);
          }
        }
        else {
          n = ViewGroup.getChildMeasureSpec(this.f, m, -2);
        }
      }
      else {
        n = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
      }
      m = localObject3[localObject2.ordinal()];
      if (m != 1)
      {
        if (m != 2)
        {
          if (m != 3)
          {
            if (m != 4)
            {
              m = 0;
            }
            else
            {
              k = ViewGroup.getChildMeasureSpec(this.g, k, -2);
              if (paramConstraintWidget.x == 1) {
                i = 1;
              } else {
                i = 0;
              }
              j = parama.j;
              if (j != b.a.l)
              {
                m = k;
                if (j != b.a.m) {}
              }
              else
              {
                if (localView.getMeasuredWidth() == paramConstraintWidget.W()) {
                  m = 1;
                } else {
                  m = 0;
                }
                if ((parama.j != b.a.m) && (i != 0) && ((i == 0) || (m == 0)) && (!(localView instanceof h)) && (!paramConstraintWidget.o0())) {
                  i = 0;
                } else {
                  i = 1;
                }
                m = k;
                if (i != 0) {
                  m = View.MeasureSpec.makeMeasureSpec(paramConstraintWidget.x(), 1073741824);
                }
              }
            }
          }
          else {
            m = ViewGroup.getChildMeasureSpec(this.g, k + paramConstraintWidget.U(), -1);
          }
        }
        else {
          m = ViewGroup.getChildMeasureSpec(this.g, k, -2);
        }
      }
      else {
        m = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
      }
      localObject3 = (androidx.constraintlayout.core.widgets.d)paramConstraintWidget.K();
      if ((localObject3 != null) && (androidx.constraintlayout.core.widgets.g.b(ConstraintLayout.a(ConstraintLayout.this), 256)) && (localView.getMeasuredWidth() == paramConstraintWidget.W()) && (localView.getMeasuredWidth() < ((ConstraintWidget)localObject3).W()) && (localView.getMeasuredHeight() == paramConstraintWidget.x()) && (localView.getMeasuredHeight() < ((ConstraintWidget)localObject3).x()) && (localView.getBaseline() == paramConstraintWidget.p()) && (!paramConstraintWidget.m0()))
      {
        if ((d(paramConstraintWidget.C(), n, paramConstraintWidget.W())) && (d(paramConstraintWidget.D(), m, paramConstraintWidget.x()))) {
          i = 1;
        } else {
          i = 0;
        }
        if (i != 0)
        {
          parama.e = paramConstraintWidget.W();
          parama.f = paramConstraintWidget.x();
          parama.g = paramConstraintWidget.p();
          return;
        }
      }
      localObject3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
      if (localObject1 == localObject3) {
        i = 1;
      } else {
        i = 0;
      }
      if (localObject2 == localObject3) {
        k = 1;
      } else {
        k = 0;
      }
      localObject3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
      int i2;
      if ((localObject2 != localObject3) && (localObject2 != ConstraintWidget.DimensionBehaviour.FIXED)) {
        i2 = 0;
      } else {
        i2 = 1;
      }
      int i3;
      if ((localObject1 != localObject3) && (localObject1 != ConstraintWidget.DimensionBehaviour.FIXED)) {
        i3 = 0;
      } else {
        i3 = 1;
      }
      int i4;
      if ((i != 0) && (paramConstraintWidget.d0 > 0.0F)) {
        i4 = 1;
      } else {
        i4 = 0;
      }
      int i5;
      if ((k != 0) && (paramConstraintWidget.d0 > 0.0F)) {
        i5 = 1;
      } else {
        i5 = 0;
      }
      if (localView == null) {
        return;
      }
      localObject1 = (ConstraintLayout.b)localView.getLayoutParams();
      j = parama.j;
      if ((j != b.a.l) && (j != b.a.m) && (i != 0) && (paramConstraintWidget.w == 0) && (k != 0) && (paramConstraintWidget.x == 0))
      {
        i = 0;
        i2 = 0;
        i1 = 0;
      }
      else
      {
        if (((localView instanceof l)) && ((paramConstraintWidget instanceof androidx.constraintlayout.core.widgets.h)))
        {
          localObject2 = (androidx.constraintlayout.core.widgets.h)paramConstraintWidget;
          ((l)localView).t((androidx.constraintlayout.core.widgets.h)localObject2, n, m);
        }
        else
        {
          localView.measure(n, m);
        }
        paramConstraintWidget.V0(n, m);
        int i6 = localView.getMeasuredWidth();
        int i7 = localView.getMeasuredHeight();
        int i8 = localView.getBaseline();
        i = paramConstraintWidget.z;
        if (i > 0) {
          k = Math.max(i, i6);
        } else {
          k = i6;
        }
        j = paramConstraintWidget.A;
        i = k;
        if (j > 0) {
          i = Math.min(j, k);
        }
        k = paramConstraintWidget.C;
        if (k > 0) {
          k = Math.max(k, i7);
        } else {
          k = i7;
        }
        j = paramConstraintWidget.D;
        i1 = k;
        if (j > 0) {
          i1 = Math.min(j, k);
        }
        k = i1;
        j = i;
        if (!androidx.constraintlayout.core.widgets.g.b(ConstraintLayout.a(ConstraintLayout.this), 1))
        {
          float f1;
          if ((i4 != 0) && (i2 != 0))
          {
            f1 = paramConstraintWidget.d0;
            j = (int)(i1 * f1 + 0.5F);
            k = i1;
          }
          else
          {
            k = i1;
            j = i;
            if (i5 != 0)
            {
              k = i1;
              j = i;
              if (i3 != 0)
              {
                f1 = paramConstraintWidget.d0;
                k = (int)(i / f1 + 0.5F);
                j = i;
              }
            }
          }
        }
        if (i6 == j)
        {
          i = k;
          i2 = i8;
          i1 = j;
          if (i7 != k) {}
        }
        for (;;)
        {
          break;
          if (i6 != j) {
            n = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
          }
          if (i7 != k) {
            m = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
          }
          localView.measure(n, m);
          paramConstraintWidget.V0(n, m);
          i1 = localView.getMeasuredWidth();
          i = localView.getMeasuredHeight();
          i2 = localView.getBaseline();
        }
      }
      boolean bool1;
      if (i2 != -1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      boolean bool2;
      if ((i1 == parama.c) && (i == parama.d)) {
        bool2 = false;
      } else {
        bool2 = true;
      }
      parama.i = bool2;
      if (((ConstraintLayout.b)localObject1).g0) {
        bool1 = true;
      }
      if ((bool1) && (i2 != -1) && (paramConstraintWidget.p() != i2)) {
        parama.i = true;
      }
      parama.e = i1;
      parama.f = i;
      parama.h = bool1;
      parama.g = i2;
    }
    
    public void c(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
    {
      this.b = paramInt3;
      this.c = paramInt4;
      this.d = paramInt5;
      this.e = paramInt6;
      this.f = paramInt1;
      this.g = paramInt2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.ConstraintLayout
 * JD-Core Version:    0.7.0.1
 */