package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public class q
  extends m
{
  private ArrayList<m> a = new ArrayList();
  private boolean b = true;
  int c;
  boolean d = false;
  private int e = 0;
  
  private void h(m paramm)
  {
    this.a.add(paramm);
    paramm.mParent = this;
  }
  
  private void z()
  {
    b localb = new b(this);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).addListener(localb);
    }
    this.c = this.a.size();
  }
  
  public q a(m.g paramg)
  {
    return (q)super.addListener(paramg);
  }
  
  public q b(int paramInt)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).addTarget(paramInt);
    }
    return (q)super.addTarget(paramInt);
  }
  
  protected void cancel()
  {
    super.cancel();
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).cancel();
    }
  }
  
  public void captureEndValues(t paramt)
  {
    if (isValidTarget(paramt.b))
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        m localm = (m)localIterator.next();
        if (localm.isValidTarget(paramt.b))
        {
          localm.captureEndValues(paramt);
          paramt.c.add(localm);
        }
      }
    }
  }
  
  void capturePropagationValues(t paramt)
  {
    super.capturePropagationValues(paramt);
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).capturePropagationValues(paramt);
    }
  }
  
  public void captureStartValues(t paramt)
  {
    if (isValidTarget(paramt.b))
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        m localm = (m)localIterator.next();
        if (localm.isValidTarget(paramt.b))
        {
          localm.captureStartValues(paramt);
          paramt.c.add(localm);
        }
      }
    }
  }
  
  public m clone()
  {
    q localq = (q)super.clone();
    localq.a = new ArrayList();
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      localq.h(((m)this.a.get(j)).clone());
    }
    return localq;
  }
  
  protected void createAnimators(ViewGroup paramViewGroup, u paramu1, u paramu2, ArrayList<t> paramArrayList1, ArrayList<t> paramArrayList2)
  {
    long l1 = getStartDelay();
    int i = this.a.size();
    for (int j = 0; j < i; j++)
    {
      m localm = (m)this.a.get(j);
      if ((l1 > 0L) && ((this.b) || (j == 0)))
      {
        long l2 = localm.getStartDelay();
        if (l2 > 0L) {
          localm.setStartDelay(l2 + l1);
        } else {
          localm.setStartDelay(l1);
        }
      }
      localm.createAnimators(paramViewGroup, paramu1, paramu2, paramArrayList1, paramArrayList2);
    }
  }
  
  public q d(View paramView)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).addTarget(paramView);
    }
    return (q)super.addTarget(paramView);
  }
  
  public q e(Class<?> paramClass)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).addTarget(paramClass);
    }
    return (q)super.addTarget(paramClass);
  }
  
  public m excludeTarget(int paramInt, boolean paramBoolean)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).excludeTarget(paramInt, paramBoolean);
    }
    return super.excludeTarget(paramInt, paramBoolean);
  }
  
  public m excludeTarget(View paramView, boolean paramBoolean)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).excludeTarget(paramView, paramBoolean);
    }
    return super.excludeTarget(paramView, paramBoolean);
  }
  
  public m excludeTarget(Class<?> paramClass, boolean paramBoolean)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).excludeTarget(paramClass, paramBoolean);
    }
    return super.excludeTarget(paramClass, paramBoolean);
  }
  
  public m excludeTarget(String paramString, boolean paramBoolean)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).excludeTarget(paramString, paramBoolean);
    }
    return super.excludeTarget(paramString, paramBoolean);
  }
  
  public q f(String paramString)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).addTarget(paramString);
    }
    return (q)super.addTarget(paramString);
  }
  
  void forceToEnd(ViewGroup paramViewGroup)
  {
    super.forceToEnd(paramViewGroup);
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).forceToEnd(paramViewGroup);
    }
  }
  
  public q g(m paramm)
  {
    h(paramm);
    long l = this.mDuration;
    if (l >= 0L) {
      paramm.setDuration(l);
    }
    if ((this.e & 0x1) != 0) {
      paramm.setInterpolator(getInterpolator());
    }
    if ((this.e & 0x2) != 0)
    {
      getPropagation();
      paramm.setPropagation(null);
    }
    if ((this.e & 0x4) != 0) {
      paramm.setPathMotion(getPathMotion());
    }
    if ((this.e & 0x8) != 0) {
      paramm.setEpicenterCallback(getEpicenterCallback());
    }
    return this;
  }
  
  public m i(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.a.size())) {
      return (m)this.a.get(paramInt);
    }
    return null;
  }
  
  public int k()
  {
    return this.a.size();
  }
  
  public q l(m.g paramg)
  {
    return (q)super.removeListener(paramg);
  }
  
  public q n(int paramInt)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).removeTarget(paramInt);
    }
    return (q)super.removeTarget(paramInt);
  }
  
  public q o(View paramView)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).removeTarget(paramView);
    }
    return (q)super.removeTarget(paramView);
  }
  
  public q p(Class<?> paramClass)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).removeTarget(paramClass);
    }
    return (q)super.removeTarget(paramClass);
  }
  
  public void pause(View paramView)
  {
    super.pause(paramView);
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).pause(paramView);
    }
  }
  
  public q r(String paramString)
  {
    for (int i = 0; i < this.a.size(); i++) {
      ((m)this.a.get(i)).removeTarget(paramString);
    }
    return (q)super.removeTarget(paramString);
  }
  
  public void resume(View paramView)
  {
    super.resume(paramView);
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).resume(paramView);
    }
  }
  
  protected void runAnimators()
  {
    if (this.a.isEmpty())
    {
      start();
      end();
      return;
    }
    z();
    Object localObject;
    if (!this.b)
    {
      for (int i = 1; i < this.a.size(); i++) {
        ((m)this.a.get(i - 1)).addListener(new a((m)this.a.get(i)));
      }
      localObject = (m)this.a.get(0);
      if (localObject != null) {
        ((m)localObject).runAnimators();
      }
    }
    else
    {
      localObject = this.a.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((m)((Iterator)localObject).next()).runAnimators();
      }
    }
  }
  
  void setCanRemoveViews(boolean paramBoolean)
  {
    super.setCanRemoveViews(paramBoolean);
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).setCanRemoveViews(paramBoolean);
    }
  }
  
  public void setEpicenterCallback(m.f paramf)
  {
    super.setEpicenterCallback(paramf);
    this.e |= 0x8;
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).setEpicenterCallback(paramf);
    }
  }
  
  public void setPathMotion(g paramg)
  {
    super.setPathMotion(paramg);
    this.e |= 0x4;
    if (this.a != null) {
      for (int i = 0; i < this.a.size(); i++) {
        ((m)this.a.get(i)).setPathMotion(paramg);
      }
    }
  }
  
  public void setPropagation(p paramp)
  {
    super.setPropagation(paramp);
    this.e |= 0x2;
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).setPropagation(paramp);
    }
  }
  
  public q t(m paramm)
  {
    this.a.remove(paramm);
    paramm.mParent = null;
    return this;
  }
  
  String toString(String paramString)
  {
    Object localObject = super.toString(paramString);
    for (int i = 0; i < this.a.size(); i++)
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append((String)localObject);
      localStringBuilder1.append("\n");
      localObject = (m)this.a.get(i);
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(paramString);
      localStringBuilder2.append("  ");
      localStringBuilder1.append(((m)localObject).toString(localStringBuilder2.toString()));
      localObject = localStringBuilder1.toString();
    }
    return localObject;
  }
  
  public q u(long paramLong)
  {
    super.setDuration(paramLong);
    if (this.mDuration >= 0L)
    {
      ArrayList localArrayList = this.a;
      if (localArrayList != null)
      {
        int i = localArrayList.size();
        for (int j = 0; j < i; j++) {
          ((m)this.a.get(j)).setDuration(paramLong);
        }
      }
    }
    return this;
  }
  
  public q v(TimeInterpolator paramTimeInterpolator)
  {
    this.e |= 0x1;
    ArrayList localArrayList = this.a;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        ((m)this.a.get(j)).setInterpolator(paramTimeInterpolator);
      }
    }
    return (q)super.setInterpolator(paramTimeInterpolator);
  }
  
  public q w(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt == 1)
      {
        this.b = false;
      }
      else
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid parameter for TransitionSet ordering: ");
        localStringBuilder.append(paramInt);
        throw new AndroidRuntimeException(localStringBuilder.toString());
      }
    }
    else {
      this.b = true;
    }
    return this;
  }
  
  q x(ViewGroup paramViewGroup)
  {
    super.setSceneRoot(paramViewGroup);
    int i = this.a.size();
    for (int j = 0; j < i; j++) {
      ((m)this.a.get(j)).setSceneRoot(paramViewGroup);
    }
    return this;
  }
  
  public q y(long paramLong)
  {
    return (q)super.setStartDelay(paramLong);
  }
  
  class a
    extends n
  {
    a(m paramm) {}
    
    public void onTransitionEnd(m paramm)
    {
      this.a.runAnimators();
      paramm.removeListener(this);
    }
  }
  
  static class b
    extends n
  {
    q a;
    
    b(q paramq)
    {
      this.a = paramq;
    }
    
    public void onTransitionEnd(m paramm)
    {
      q localq = this.a;
      int i = localq.c - 1;
      localq.c = i;
      if (i == 0)
      {
        localq.d = false;
        localq.end();
      }
      paramm.removeListener(this);
    }
    
    public void onTransitionStart(m paramm)
    {
      paramm = this.a;
      if (!paramm.d)
      {
        paramm.start();
        this.a.d = true;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.q
 * JD-Core Version:    0.7.0.1
 */