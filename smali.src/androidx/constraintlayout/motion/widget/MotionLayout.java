package androidx.constraintlayout.motion.widget;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.os.BaseBundle;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.core.view.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class MotionLayout
  extends ConstraintLayout
  implements s
{
  public static boolean A0;
  Interpolator E;
  Interpolator F;
  float G;
  private int H;
  int I;
  private int J;
  private boolean K;
  HashMap<View, g> L;
  private long M;
  private float N;
  float O;
  float P;
  private long Q;
  float R;
  private boolean S;
  boolean T;
  private d U;
  int V;
  private boolean W;
  private b a0;
  boolean b0;
  float c0;
  float d0;
  long e0;
  float f0;
  private boolean g0;
  private ArrayList<h> h0;
  private ArrayList<h> i0;
  private ArrayList<h> j0;
  private CopyOnWriteArrayList<d> k0;
  private int l0;
  private float m0;
  boolean n0;
  protected boolean o0;
  float p0;
  private boolean q0;
  private c r0;
  private Runnable s0;
  private int[] t0;
  int u0;
  private int v0;
  private boolean w0;
  TransitionState x0;
  private boolean y0;
  ArrayList<Integer> z0;
  
  private void C()
  {
    if (this.U == null)
    {
      localObject1 = this.k0;
      if ((localObject1 == null) || (((CopyOnWriteArrayList)localObject1).isEmpty())) {
        return;
      }
    }
    this.n0 = false;
    Object localObject1 = this.z0.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Integer localInteger = (Integer)((Iterator)localObject1).next();
      Object localObject2 = this.U;
      if (localObject2 != null) {
        ((d)localObject2).c(this, localInteger.intValue());
      }
      localObject2 = this.k0;
      if (localObject2 != null)
      {
        localObject2 = ((CopyOnWriteArrayList)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((d)((Iterator)localObject2).next()).c(this, localInteger.intValue());
        }
      }
    }
    this.z0.clear();
  }
  
  private void z()
  {
    Object localObject;
    if (this.U == null)
    {
      localObject = this.k0;
      if ((localObject == null) || (((CopyOnWriteArrayList)localObject).isEmpty())) {}
    }
    else if (this.m0 != this.O)
    {
      if (this.l0 != -1)
      {
        localObject = this.U;
        if (localObject != null) {
          ((d)localObject).b(this, this.H, this.J);
        }
        localObject = this.k0;
        if (localObject != null)
        {
          localObject = ((CopyOnWriteArrayList)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            ((d)((Iterator)localObject).next()).b(this, this.H, this.J);
          }
        }
        this.n0 = true;
      }
      this.l0 = -1;
      float f = this.O;
      this.m0 = f;
      localObject = this.U;
      if (localObject != null) {
        ((d)localObject).a(this, this.H, this.J, f);
      }
      localObject = this.k0;
      if (localObject != null)
      {
        localObject = ((CopyOnWriteArrayList)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((d)((Iterator)localObject).next()).a(this, this.H, this.J, this.O);
        }
      }
      this.n0 = true;
    }
  }
  
  protected void A()
  {
    if (this.U == null)
    {
      localObject = this.k0;
      if ((localObject == null) || (((CopyOnWriteArrayList)localObject).isEmpty())) {}
    }
    else if (this.l0 == -1)
    {
      this.l0 = this.I;
      int i;
      if (!this.z0.isEmpty())
      {
        localObject = this.z0;
        i = ((Integer)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1)).intValue();
      }
      else
      {
        i = -1;
      }
      int j = this.I;
      if ((i != j) && (j != -1)) {
        this.z0.add(Integer.valueOf(j));
      }
    }
    C();
    Object localObject = this.s0;
    if (localObject != null) {
      ((Runnable)localObject).run();
    }
    localObject = this.t0;
    if ((localObject != null) && (this.u0 > 0))
    {
      H(localObject[0]);
      localObject = this.t0;
      System.arraycopy(localObject, 1, localObject, 0, localObject.length - 1);
      this.u0 -= 1;
    }
  }
  
  void B() {}
  
  public void D(float paramFloat1, float paramFloat2)
  {
    if (!isAttachedToWindow())
    {
      if (this.r0 == null) {
        this.r0 = new c();
      }
      this.r0.e(paramFloat1);
      this.r0.h(paramFloat2);
      return;
    }
    setProgress(paramFloat1);
    setState(TransitionState.MOVING);
    this.G = paramFloat2;
    float f1 = 0.0F;
    float f2 = 0.0F;
    boolean bool = paramFloat2 < 0.0F;
    if (bool)
    {
      paramFloat1 = f2;
      if (bool) {
        paramFloat1 = 1.0F;
      }
      x(paramFloat1);
    }
    else if ((paramFloat1 != 0.0F) && (paramFloat1 != 1.0F))
    {
      paramFloat2 = f1;
      if (paramFloat1 > 0.5F) {
        paramFloat2 = 1.0F;
      }
      x(paramFloat2);
    }
  }
  
  public void E(int paramInt1, int paramInt2, int paramInt3)
  {
    setState(TransitionState.SETUP);
    this.I = paramInt1;
    this.H = -1;
    this.J = -1;
    c localc = this.k;
    if (localc != null) {
      localc.d(paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void F(int paramInt1, int paramInt2)
  {
    if (!isAttachedToWindow())
    {
      if (this.r0 == null) {
        this.r0 = new c();
      }
      this.r0.f(paramInt1);
      this.r0.d(paramInt2);
    }
  }
  
  public void G()
  {
    x(1.0F);
    this.s0 = null;
  }
  
  public void H(int paramInt)
  {
    if (!isAttachedToWindow())
    {
      if (this.r0 == null) {
        this.r0 = new c();
      }
      this.r0.d(paramInt);
      return;
    }
    I(paramInt, -1, -1);
  }
  
  public void I(int paramInt1, int paramInt2, int paramInt3)
  {
    J(paramInt1, paramInt2, paramInt3, -1);
  }
  
  public void J(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = this.I;
    if (paramInt2 == paramInt1) {
      return;
    }
    if (this.H == paramInt1)
    {
      x(0.0F);
      if (paramInt4 > 0) {
        this.N = (paramInt4 / 1000.0F);
      }
      return;
    }
    if (this.J == paramInt1)
    {
      x(1.0F);
      if (paramInt4 > 0) {
        this.N = (paramInt4 / 1000.0F);
      }
      return;
    }
    this.J = paramInt1;
    if (paramInt2 != -1)
    {
      F(paramInt2, paramInt1);
      x(1.0F);
      this.P = 0.0F;
      G();
      if (paramInt4 > 0) {
        this.N = (paramInt4 / 1000.0F);
      }
      return;
    }
    this.W = false;
    this.R = 1.0F;
    this.O = 0.0F;
    this.P = 0.0F;
    this.Q = getNanoTime();
    this.M = getNanoTime();
    this.S = false;
    this.E = null;
    if (paramInt4 == -1) {
      throw null;
    }
    this.H = -1;
    throw null;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    Object localObject = this.j0;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((h)((Iterator)localObject).next()).w(paramCanvas);
      }
    }
    y(false);
    super.dispatchDraw(paramCanvas);
  }
  
  public int[] getConstraintSetIds()
  {
    return null;
  }
  
  public int getCurrentState()
  {
    return this.I;
  }
  
  public ArrayList<k.a> getDefinedTransitions()
  {
    return null;
  }
  
  public b getDesignTool()
  {
    if (this.a0 == null) {
      this.a0 = new b(this);
    }
    return this.a0;
  }
  
  public int getEndState()
  {
    return this.J;
  }
  
  protected long getNanoTime()
  {
    return System.nanoTime();
  }
  
  public float getProgress()
  {
    return this.P;
  }
  
  public k getScene()
  {
    return null;
  }
  
  public int getStartState()
  {
    return this.H;
  }
  
  public float getTargetPosition()
  {
    return this.R;
  }
  
  public Bundle getTransitionState()
  {
    if (this.r0 == null) {
      this.r0 = new c();
    }
    this.r0.c();
    return this.r0.b();
  }
  
  public long getTransitionTimeMs()
  {
    return (this.N * 1000.0F);
  }
  
  public float getVelocity()
  {
    return this.G;
  }
  
  public boolean isAttachedToWindow()
  {
    return super.isAttachedToWindow();
  }
  
  protected void m(int paramInt)
  {
    this.k = null;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Object localObject = getDisplay();
    if (localObject != null) {
      this.v0 = ((Display)localObject).getRotation();
    }
    B();
    localObject = this.r0;
    if (localObject != null) {
      if (this.w0) {
        post(new a());
      } else {
        ((c)localObject).a();
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.q0 = true;
    try
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    finally
    {
      this.q0 = false;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt)
  {
    if ((this.b0) || (paramInt1 != 0) || (paramInt2 != 0))
    {
      paramArrayOfInt[0] += paramInt3;
      paramArrayOfInt[1] += paramInt4;
    }
    this.b0 = false;
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    this.e0 = getNanoTime();
    this.f0 = 0.0F;
    this.c0 = 0.0F;
    this.d0 = 0.0F;
  }
  
  public void onRtlPropertiesChanged(int paramInt) {}
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public void onStopNestedScroll(View paramView, int paramInt) {}
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void onViewAdded(View paramView)
  {
    super.onViewAdded(paramView);
    if ((paramView instanceof h))
    {
      paramView = (h)paramView;
      if (this.k0 == null) {
        this.k0 = new CopyOnWriteArrayList();
      }
      this.k0.add(paramView);
      if (paramView.v())
      {
        if (this.h0 == null) {
          this.h0 = new ArrayList();
        }
        this.h0.add(paramView);
      }
      if (paramView.u())
      {
        if (this.i0 == null) {
          this.i0 = new ArrayList();
        }
        this.i0.add(paramView);
      }
      if (paramView.t())
      {
        if (this.j0 == null) {
          this.j0 = new ArrayList();
        }
        this.j0.add(paramView);
      }
    }
  }
  
  public void onViewRemoved(View paramView)
  {
    super.onViewRemoved(paramView);
    ArrayList localArrayList = this.h0;
    if (localArrayList != null) {
      localArrayList.remove(paramView);
    }
    localArrayList = this.i0;
    if (localArrayList != null) {
      localArrayList.remove(paramView);
    }
  }
  
  public void requestLayout()
  {
    if (!this.o0) {
      int i = this.I;
    }
    super.requestLayout();
  }
  
  public void setDebugMode(int paramInt)
  {
    this.V = paramInt;
    invalidate();
  }
  
  public void setDelayedApplicationOfInitialState(boolean paramBoolean)
  {
    this.w0 = paramBoolean;
  }
  
  public void setInteractionEnabled(boolean paramBoolean)
  {
    this.K = paramBoolean;
  }
  
  public void setInterpolatedProgress(float paramFloat)
  {
    setProgress(paramFloat);
  }
  
  public void setOnHide(float paramFloat)
  {
    ArrayList localArrayList = this.i0;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        ((h)this.i0.get(j)).setProgress(paramFloat);
      }
    }
  }
  
  public void setOnShow(float paramFloat)
  {
    ArrayList localArrayList = this.h0;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        ((h)this.h0.get(j)).setProgress(paramFloat);
      }
    }
  }
  
  public void setProgress(float paramFloat)
  {
    boolean bool = paramFloat < 0.0F;
    if ((bool) || (paramFloat > 1.0F)) {
      Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
    }
    if (!isAttachedToWindow())
    {
      if (this.r0 == null) {
        this.r0 = new c();
      }
      this.r0.e(paramFloat);
      return;
    }
    if (!bool)
    {
      if ((this.P == 1.0F) && (this.I == this.J)) {
        setState(TransitionState.MOVING);
      }
      this.I = this.H;
      if (this.P == 0.0F) {
        setState(TransitionState.FINISHED);
      }
    }
    else if (paramFloat >= 1.0F)
    {
      if ((this.P == 0.0F) && (this.I == this.H)) {
        setState(TransitionState.MOVING);
      }
      this.I = this.J;
      if (this.P == 1.0F) {
        setState(TransitionState.FINISHED);
      }
    }
    else
    {
      this.I = -1;
      setState(TransitionState.MOVING);
    }
  }
  
  public void setScene(k paramk)
  {
    k();
    throw null;
  }
  
  void setStartState(int paramInt)
  {
    if (!isAttachedToWindow())
    {
      if (this.r0 == null) {
        this.r0 = new c();
      }
      this.r0.f(paramInt);
      this.r0.d(paramInt);
      return;
    }
    this.I = paramInt;
  }
  
  void setState(TransitionState paramTransitionState)
  {
    TransitionState localTransitionState1 = TransitionState.FINISHED;
    if ((paramTransitionState == localTransitionState1) && (this.I == -1)) {
      return;
    }
    TransitionState localTransitionState2 = this.x0;
    this.x0 = paramTransitionState;
    TransitionState localTransitionState3 = TransitionState.MOVING;
    if ((localTransitionState2 == localTransitionState3) && (paramTransitionState == localTransitionState3)) {
      z();
    }
    int i = b.a[localTransitionState2.ordinal()];
    if ((i != 1) && (i != 2))
    {
      if ((i == 3) && (paramTransitionState == localTransitionState1)) {
        A();
      }
    }
    else
    {
      if (paramTransitionState == localTransitionState3) {
        z();
      }
      if (paramTransitionState == localTransitionState1) {
        A();
      }
    }
  }
  
  public void setTransition(int paramInt) {}
  
  protected void setTransition(k.a parama)
  {
    throw null;
  }
  
  public void setTransitionDuration(int paramInt)
  {
    Log.e("MotionLayout", "MotionScene not defined");
  }
  
  public void setTransitionListener(d paramd)
  {
    this.U = paramd;
  }
  
  public void setTransitionState(Bundle paramBundle)
  {
    if (this.r0 == null) {
      this.r0 = new c();
    }
    this.r0.g(paramBundle);
    if (isAttachedToWindow()) {
      this.r0.a();
    }
  }
  
  public String toString()
  {
    Context localContext = getContext();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a.a(localContext, this.H));
    localStringBuilder.append("->");
    localStringBuilder.append(a.a(localContext, this.J));
    localStringBuilder.append(" (pos:");
    localStringBuilder.append(this.P);
    localStringBuilder.append(" Dpos/Dt:");
    localStringBuilder.append(this.G);
    return localStringBuilder.toString();
  }
  
  void x(float paramFloat) {}
  
  void y(boolean paramBoolean)
  {
    if (this.Q == -1L) {
      this.Q = getNanoTime();
    }
    float f1 = this.P;
    if ((f1 > 0.0F) && (f1 < 1.0F)) {
      this.I = -1;
    }
    if ((!this.g0) && ((!this.T) || ((!paramBoolean) && (this.R == f1)))) {
      break label992;
    }
    float f2 = Math.signum(this.R - f1);
    long l = getNanoTime();
    Object localObject = this.E;
    float f3;
    if (!(localObject instanceof i)) {
      f3 = (float)(l - this.Q) * f2 * 1.0E-009F / this.N;
    } else {
      f3 = 0.0F;
    }
    f1 = this.P + f3;
    if (this.S) {
      f1 = this.R;
    }
    boolean bool = f2 < 0.0F;
    if (((bool) && (f1 >= this.R)) || ((f2 <= 0.0F) && (f1 <= this.R)))
    {
      f1 = this.R;
      this.T = false;
      j = 1;
    }
    else
    {
      j = 0;
    }
    this.P = f1;
    this.O = f1;
    this.Q = l;
    float f4;
    if ((localObject != null) && (j == 0))
    {
      if (this.W)
      {
        f3 = ((TimeInterpolator)localObject).getInterpolation((float)(l - this.M) * 1.0E-009F);
        localObject = this.E;
        localObject.getClass();
        this.P = f3;
        this.Q = l;
        f1 = f3;
        if ((localObject instanceof i))
        {
          f4 = ((i)localObject).a();
          this.G = f4;
          Math.abs(f4);
          f1 = this.N;
          if ((f4 > 0.0F) && (f3 >= 1.0F))
          {
            this.P = 1.0F;
            this.T = false;
            f3 = 1.0F;
          }
          f1 = f3;
          if (f4 < 0.0F)
          {
            f1 = f3;
            if (f3 <= 0.0F)
            {
              this.P = 0.0F;
              this.T = false;
              f1 = 0.0F;
              break label462;
            }
          }
        }
      }
      else
      {
        f4 = ((TimeInterpolator)localObject).getInterpolation(f1);
        localObject = this.E;
        if ((localObject instanceof i))
        {
          this.G = ((i)localObject).a();
          f1 = f4;
        }
        else
        {
          this.G = ((((TimeInterpolator)localObject).getInterpolation(f1 + f3) - f4) * f2 / f3);
          f1 = f4;
        }
      }
    }
    else {
      this.G = f3;
    }
    label462:
    if (Math.abs(this.G) > 1.0E-005F) {
      setState(TransitionState.MOVING);
    }
    if ((!bool) || (f1 < this.R))
    {
      f3 = f1;
      if (f2 <= 0.0F)
      {
        f3 = f1;
        if (f1 > this.R) {}
      }
    }
    else
    {
      f3 = this.R;
      this.T = false;
    }
    if ((f3 < 1.0F) && (f3 > 0.0F)) {
      break label561;
    }
    this.T = false;
    setState(TransitionState.FINISHED);
    label561:
    int k = getChildCount();
    this.g0 = false;
    l = getNanoTime();
    this.p0 = f3;
    localObject = this.F;
    if (localObject == null) {
      f1 = f3;
    } else {
      f1 = ((TimeInterpolator)localObject).getInterpolation(f3);
    }
    localObject = this.F;
    if (localObject != null)
    {
      f4 = ((TimeInterpolator)localObject).getInterpolation(f2 / this.N + f3);
      this.G = f4;
      this.G = (f4 - this.F.getInterpolation(f3));
    }
    for (int j = 0; j < k; j++)
    {
      View localView = getChildAt(j);
      localObject = (g)this.L.get(localView);
      if (localObject != null) {
        this.g0 |= ((g)localObject).c(localView, f1, l, null);
      }
    }
    if (((bool) && (f3 >= this.R)) || ((f2 <= 0.0F) && (f3 <= this.R))) {
      j = 1;
    } else {
      j = 0;
    }
    if ((!this.g0) && (!this.T) && (j != 0)) {
      setState(TransitionState.FINISHED);
    }
    if (this.o0) {
      requestLayout();
    }
    paramBoolean = this.g0 | j ^ 0x1;
    this.g0 = paramBoolean;
    if (f3 <= 0.0F)
    {
      j = this.H;
      if ((j != -1) && (this.I != j))
      {
        this.I = j;
        throw null;
      }
    }
    if (f3 >= 1.0D)
    {
      k = this.I;
      j = this.J;
      if (k != j)
      {
        this.I = j;
        throw null;
      }
    }
    if ((!paramBoolean) && (!this.T))
    {
      if (((bool) && (f3 == 1.0F)) || ((f2 < 0.0F) && (f3 == 0.0F))) {
        setState(TransitionState.FINISHED);
      }
    }
    else {
      invalidate();
    }
    if ((!this.g0) && (!this.T) && (((bool) && (f3 == 1.0F)) || ((f2 < 0.0F) && (f3 == 0.0F)))) {
      B();
    }
    label992:
    bool = true;
    j = 1;
    f1 = this.P;
    int i;
    if (f1 >= 1.0F)
    {
      k = this.I;
      i = this.J;
      if (k == i) {
        j = 0;
      }
      this.I = i;
    }
    for (;;)
    {
      break;
      if (f1 <= 0.0F)
      {
        j = this.I;
        k = this.H;
        if (j != k) {
          j = i;
        } else {
          j = 0;
        }
        this.I = k;
      }
      else
      {
        j = 0;
      }
    }
    this.y0 |= j;
    if ((j != 0) && (!this.q0)) {
      requestLayout();
    }
    this.O = this.P;
  }
  
  static enum TransitionState
  {
    static
    {
      SETUP = new TransitionState("SETUP", 1);
      MOVING = new TransitionState("MOVING", 2);
      FINISHED = new TransitionState("FINISHED", 3);
    }
    
    private TransitionState() {}
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      MotionLayout.u(MotionLayout.this).a();
    }
  }
  
  class c
  {
    float a = (0.0F / 0.0F);
    float b = (0.0F / 0.0F);
    int c = -1;
    int d = -1;
    final String e = "motion.progress";
    final String f = "motion.velocity";
    final String g = "motion.StartState";
    final String h = "motion.EndState";
    
    c() {}
    
    void a()
    {
      int j = this.c;
      if ((j != -1) || (this.d != -1))
      {
        if (j == -1)
        {
          MotionLayout.this.H(this.d);
        }
        else
        {
          int k = this.d;
          if (k == -1) {
            MotionLayout.this.E(j, -1, -1);
          } else {
            MotionLayout.this.F(j, k);
          }
        }
        MotionLayout.this.setState(MotionLayout.TransitionState.SETUP);
      }
      if (Float.isNaN(this.b))
      {
        if (Float.isNaN(this.a)) {
          return;
        }
        MotionLayout.this.setProgress(this.a);
        return;
      }
      MotionLayout.this.D(this.a, this.b);
      this.a = (0.0F / 0.0F);
      this.b = (0.0F / 0.0F);
      this.c = -1;
      this.d = -1;
    }
    
    public Bundle b()
    {
      Bundle localBundle = new Bundle();
      localBundle.putFloat("motion.progress", this.a);
      localBundle.putFloat("motion.velocity", this.b);
      localBundle.putInt("motion.StartState", this.c);
      localBundle.putInt("motion.EndState", this.d);
      return localBundle;
    }
    
    public void c()
    {
      this.d = MotionLayout.v(MotionLayout.this);
      this.c = MotionLayout.w(MotionLayout.this);
      this.b = MotionLayout.this.getVelocity();
      this.a = MotionLayout.this.getProgress();
    }
    
    public void d(int paramInt)
    {
      this.d = paramInt;
    }
    
    public void e(float paramFloat)
    {
      this.a = paramFloat;
    }
    
    public void f(int paramInt)
    {
      this.c = paramInt;
    }
    
    public void g(Bundle paramBundle)
    {
      this.a = paramBundle.getFloat("motion.progress");
      this.b = paramBundle.getFloat("motion.velocity");
      this.c = paramBundle.getInt("motion.StartState");
      this.d = paramBundle.getInt("motion.EndState");
    }
    
    public void h(float paramFloat)
    {
      this.b = paramFloat;
    }
  }
  
  public static abstract interface d
  {
    public abstract void a(MotionLayout paramMotionLayout, int paramInt1, int paramInt2, float paramFloat);
    
    public abstract void b(MotionLayout paramMotionLayout, int paramInt1, int paramInt2);
    
    public abstract void c(MotionLayout paramMotionLayout, int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.motion.widget.MotionLayout
 * JD-Core Version:    0.7.0.1
 */