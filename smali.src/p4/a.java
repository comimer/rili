package p4;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Paint;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import com.miui.calendar.util.e;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import o4.b;

public class a
  extends RecyclerView.g<e>
{
  private List<r4.a> a = new ArrayList();
  private Context b;
  private Calendar c;
  private b d;
  
  public a(Context paramContext, Calendar paramCalendar)
  {
    this.b = paramContext;
    this.c = paramCalendar;
  }
  
  private String j(r4.a parama)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (parama.e == 1) {
      localStringBuilder.append(this.b.getResources().getString(2131887718));
    }
    localStringBuilder.append(parama.i);
    return localStringBuilder.toString();
  }
  
  private String k(long paramLong)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HH:mm");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    return localSimpleDateFormat.format(localCalendar.getTime());
  }
  
  private void r(e parame, boolean paramBoolean)
  {
    Object localObject = e.a(parame).getPaint();
    int i;
    if (paramBoolean) {
      i = 17;
    } else {
      i = 1;
    }
    ((Paint)localObject).setFlags(i);
    TextView localTextView = e.a(parame);
    localObject = this.b.getResources();
    if (paramBoolean) {
      i = 2131100947;
    } else {
      i = 2131100948;
    }
    localTextView.setTextColor(((Resources)localObject).getColor(i));
    localTextView = e.b(parame);
    localObject = this.b.getResources();
    if (paramBoolean) {
      i = 2131100949;
    } else {
      i = 2131100950;
    }
    localTextView.setTextColor(((Resources)localObject).getColor(i));
    parame = e.d(parame);
    if (paramBoolean) {
      i = 2131231362;
    } else {
      i = 2131231363;
    }
    parame.setImageResource(i);
  }
  
  public int getItemCount()
  {
    return Math.min(this.a.size(), 3);
  }
  
  public void l(e parame, final int paramInt)
  {
    final r4.a locala = (r4.a)this.a.get(paramInt);
    int i = getItemCount();
    boolean bool = true;
    if (paramInt == i - 1) {
      parame.itemView.setBackgroundResource(2131231035);
    } else {
      parame.itemView.setBackgroundResource(2131231040);
    }
    if (locala != null)
    {
      e.a(parame).setText(j(locala));
      e.b(parame).setText(k(locala.d));
      if (locala.f != 1) {
        bool = false;
      }
      e.c(parame).setOnCheckedChangeListener(null);
      e.c(parame).setChecked(bool);
      r(parame, bool);
      e.c(parame).setOnCheckedChangeListener(new a(locala, paramInt));
    }
  }
  
  public e m(ViewGroup paramViewGroup, int paramInt)
  {
    return new e(LayoutInflater.from(this.b).inflate(2131558976, paramViewGroup, false));
  }
  
  public void o(List<r4.a> paramList, int paramInt, boolean paramBoolean)
  {
    int i = b.c(this.a);
    int j = b.a(paramList, b.b(this.a, paramInt));
    this.a.clear();
    this.a.addAll(paramList);
    if ((!paramBoolean) && (paramInt >= 0))
    {
      if ((paramInt >= i) && (j >= 0))
      {
        notifyItemMoved(paramInt, j);
        notifyItemRangeChanged(j, paramInt - j + 1);
      }
      else if (j >= 0)
      {
        notifyItemMoved(paramInt, i - 1);
        notifyItemRangeChanged(paramInt, i - paramInt);
      }
    }
    else {
      notifyDataSetChanged();
    }
  }
  
  public void p(Calendar paramCalendar)
  {
    this.c = paramCalendar;
  }
  
  public void q(b paramb)
  {
    this.d = paramb;
  }
  
  class a
    implements CompoundButton.OnCheckedChangeListener
  {
    a(r4.a parama, int paramInt) {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (paramBoolean) {
        paramCompoundButton = "click_done";
      } else {
        paramCompoundButton = "click_undone";
      }
      try
      {
        g0.f("card_button_clicked", new String[] { "todo_item_click", paramCompoundButton });
        paramCompoundButton = new p4/a$d;
        paramCompoundButton.<init>(locala, paramBoolean, a.f(a.this), a.g(a.this), paramInt, a.h(a.this));
        AsyncTask.execute(paramCompoundButton);
      }
      catch (Exception paramCompoundButton)
      {
        z.d("Cal:D:TodoRecyclerAdapter", "onCheckedChanged(): update notes todo db error. ", paramCompoundButton);
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(List<r4.a> paramList, int paramInt);
  }
  
  private static class c
    extends AsyncTask<Void, Void, List<r4.a>>
  {
    private WeakReference<Context> a;
    private Calendar b;
    private int c;
    private a.b d;
    
    private c(Context paramContext, Calendar paramCalendar, int paramInt, a.b paramb)
    {
      this.a = new WeakReference(paramContext);
      this.b = paramCalendar;
      this.c = paramInt;
      this.d = paramb;
    }
    
    protected List<r4.a> a(Void... paramVarArgs)
    {
      paramVarArgs = (Context)this.a.get();
      return q4.a.a().b(paramVarArgs, this.b);
    }
    
    protected void b(List<r4.a> paramList)
    {
      super.onPostExecute(paramList);
      if (this.a.get() != null)
      {
        a.b localb = this.d;
        if (localb != null) {
          localb.a(paramList, this.c);
        }
      }
    }
  }
  
  private static class d
    implements Runnable
  {
    private r4.a a;
    private boolean b;
    private WeakReference<Context> c;
    private Calendar d;
    private int e;
    private a.b f;
    
    public d(r4.a parama, boolean paramBoolean, Context paramContext, Calendar paramCalendar, int paramInt, a.b paramb)
    {
      this.a = parama;
      this.b = paramBoolean;
      this.c = new WeakReference(paramContext);
      this.d = paramCalendar;
      this.e = paramInt;
      this.f = paramb;
    }
    
    public void run()
    {
      if (this.c.get() == null) {
        return;
      }
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("id", Long.valueOf(this.a.a));
      localContentValues.put("is_finish", Integer.valueOf(this.b));
      ((Context)this.c.get()).getContentResolver().update(o4.a.c, localContentValues, null, null);
      new a.c((Context)this.c.get(), this.d, this.e, this.f, null).executeOnExecutor(e.a, null);
    }
  }
  
  public class e
    extends RecyclerView.c0
    implements View.OnClickListener
  {
    private CheckBox a;
    private TextView b;
    private ImageView c;
    private TextView d;
    
    public e(View paramView)
    {
      super();
      this.a = ((CheckBox)paramView.findViewById(2131362130));
      this.b = ((TextView)paramView.findViewById(2131363459));
      this.c = ((ImageView)paramView.findViewById(2131362649));
      this.d = ((TextView)paramView.findViewById(2131363468));
      this.itemView.setOnClickListener(this);
      v.k(this.itemView);
    }
    
    public void onClick(View paramView)
    {
      int i = getAdapterPosition();
      if ((i >= 0) && (i < a.i(a.this).size()))
      {
        paramView = (r4.a)a.i(a.this).get(i);
        if (paramView != null) {
          try
          {
            long l = paramView.a;
            paramView = new android/content/Intent;
            paramView.<init>("com.miui.todo.action.INSERT_OR_EDIT");
            paramView.setFlags(268435456);
            paramView.setPackage("com.miui.notes");
            paramView.putExtra("com.miui.todo.intent.extra.TODO_ID", l);
            a.f(a.this).startActivity(paramView);
            g0.f("card_button_clicked", new String[] { "todo_item_click", "click" });
          }
          catch (Exception paramView)
          {
            z.d("Cal:D:TodoRecyclerAdapter", "onItemClick(): jump to notes todo error. ", paramView);
          }
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p4.a
 * JD-Core Version:    0.7.0.1
 */