package com.android.calendar.cards;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import java.util.List;

public class n1
  extends RecyclerView.g<RecyclerView.c0>
{
  private final Context a;
  private final List<m1<RecyclerView.c0, ?>> b;
  
  public n1(Context paramContext, List<m1<RecyclerView.c0, ?>> paramList)
  {
    this.a = paramContext;
    this.b = paramList;
  }
  
  public int getItemCount()
  {
    return this.b.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((m1)this.b.get(paramInt)).d();
  }
  
  public void onBindViewHolder(RecyclerView.c0 paramc0, int paramInt)
  {
    ((m1)this.b.get(paramInt)).b(paramc0, this.a);
  }
  
  public RecyclerView.c0 onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    return t.d.b(paramViewGroup, paramInt, this.a);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.n1
 * JD-Core Version:    0.7.0.1
 */