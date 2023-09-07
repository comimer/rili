package com.android.ex.chips;

import android.content.Context;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.ArrayAdapter;

class s
  extends ArrayAdapter<r>
{
  private final DropdownChipLayouter a;
  private final StateListDrawable b;
  
  public s(Context paramContext, r paramr, DropdownChipLayouter paramDropdownChipLayouter, StateListDrawable paramStateListDrawable)
  {
    super(paramContext, paramDropdownChipLayouter.j(DropdownChipLayouter.AdapterType.SINGLE_RECIPIENT), new r[] { paramr });
    this.a = paramDropdownChipLayouter;
    this.b = paramStateListDrawable;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.a.i(paramView, paramViewGroup, (r)getItem(paramInt), paramInt, DropdownChipLayouter.AdapterType.SINGLE_RECIPIENT, null, this.b);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.s
 * JD-Core Version:    0.7.0.1
 */