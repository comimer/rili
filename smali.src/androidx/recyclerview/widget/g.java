package androidx.recyclerview.widget;

import android.view.View;

class g
{
  boolean a = true;
  int b;
  int c;
  int d;
  int e;
  int f = 0;
  int g = 0;
  boolean h;
  boolean i;
  
  boolean a(RecyclerView.z paramz)
  {
    int j = this.c;
    boolean bool;
    if ((j >= 0) && (j < paramz.b())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  View b(RecyclerView.v paramv)
  {
    paramv = paramv.o(this.c);
    this.c += this.d;
    return paramv;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LayoutState{mAvailable=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", mCurrentPosition=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", mItemDirection=");
    localStringBuilder.append(this.d);
    localStringBuilder.append(", mLayoutDirection=");
    localStringBuilder.append(this.e);
    localStringBuilder.append(", mStartLine=");
    localStringBuilder.append(this.f);
    localStringBuilder.append(", mEndLine=");
    localStringBuilder.append(this.g);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.g
 * JD-Core Version:    0.7.0.1
 */