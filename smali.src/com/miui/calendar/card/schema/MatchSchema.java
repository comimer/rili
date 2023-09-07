package com.miui.calendar.card.schema;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.miui.calendar.card.single.custom.CustomSingleCard.CustomItemExtraSchema;

@Keep
public class MatchSchema
  extends CustomSingleCard.CustomItemExtraSchema
{
  @SerializedName("away_team_score")
  public int awayScore;
  @SerializedName("away_team")
  public String awayTeam;
  @SerializedName("away_team_icon")
  public String awayTeamIcon;
  public int category;
  @SerializedName("home_team_score")
  public int homeScore;
  @SerializedName("home_team")
  public String homeTeam;
  @SerializedName("home_team_icon")
  public String homeTeamIcon;
  public String league;
  @SerializedName("node_id")
  public int nodeId;
  public String process;
  public int state;
  public long time;
  @SerializedName("type_name")
  public String typeName;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.schema.MatchSchema
 * JD-Core Version:    0.7.0.1
 */