package com.miui.calendar.card.schema;

import android.content.Context;
import androidx.annotation.Keep;
import com.android.calendar.common.ActionSchema;
import com.miui.calendar.card.single.custom.CustomSingleCard.CustomItemExtraSchema;
import com.miui.calendar.util.a;

@Keep
public class BigMatchSchema
  extends CustomSingleCard.CustomItemExtraSchema
{
  public static final String MAP_KEY_BIG_MATCH_ID = "map_key_big_match_id";
  public static final String MAP_KEY_EVENT_ACTION = "map_key_event_action";
  public static final String MAP_KEY_EVENT_ACTION_TITLE = "map_key_event_action_title";
  public static final String MAP_KEY_OLYMPIC_MATCH_ID = "map_key_olympic_match_id";
  public ActionSchema buttonAction;
  public String desc;
  public String group;
  public ActionSchema itemAction;
  public String round;
  public int score1;
  public int score2;
  public int state;
  public String team1;
  public String team2;
  public String teamIcon1;
  public String teamIcon2;
  public String time;
  
  public static boolean sendIntent(Context paramContext, ActionSchema paramActionSchema)
  {
    if (paramActionSchema == null) {
      return false;
    }
    paramActionSchema = paramActionSchema.toIntent(paramContext);
    if (paramActionSchema == null) {
      return false;
    }
    new a(paramActionSchema).a(paramContext);
    return true;
  }
  
  public boolean sendButtonIntent(Context paramContext)
  {
    return sendIntent(paramContext, this.buttonAction);
  }
  
  public boolean sendItemIntent(Context paramContext)
  {
    return sendIntent(paramContext, this.itemAction);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.schema.BigMatchSchema
 * JD-Core Version:    0.7.0.1
 */