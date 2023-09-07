.class public Lcom/miui/calendar/card/schema/BigMatchSchema;
.super Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;
.source "BigMatchSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final MAP_KEY_BIG_MATCH_ID:Ljava/lang/String; = "map_key_big_match_id"

.field public static final MAP_KEY_EVENT_ACTION:Ljava/lang/String; = "map_key_event_action"

.field public static final MAP_KEY_EVENT_ACTION_TITLE:Ljava/lang/String; = "map_key_event_action_title"

.field public static final MAP_KEY_OLYMPIC_MATCH_ID:Ljava/lang/String; = "map_key_olympic_match_id"


# instance fields
.field public buttonAction:Lcom/android/calendar/common/ActionSchema;

.field public desc:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public itemAction:Lcom/android/calendar/common/ActionSchema;

.field public round:Ljava/lang/String;

.field public score1:I

.field public score2:I

.field public state:I

.field public team1:Ljava/lang/String;

.field public team2:Ljava/lang/String;

.field public teamIcon1:Ljava/lang/String;

.field public teamIcon2:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static sendIntent(Landroid/content/Context;Lcom/android/calendar/common/ActionSchema;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/calendar/common/ActionSchema;->toIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    new-instance v0, Lcom/miui/calendar/util/a;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/miui/calendar/util/a;-><init>(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/miui/calendar/util/a;->a(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public sendButtonIntent(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/schema/BigMatchSchema;->buttonAction:Lcom/android/calendar/common/ActionSchema;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/miui/calendar/card/schema/BigMatchSchema;->sendIntent(Landroid/content/Context;Lcom/android/calendar/common/ActionSchema;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public sendItemIntent(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/schema/BigMatchSchema;->itemAction:Lcom/android/calendar/common/ActionSchema;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/miui/calendar/card/schema/BigMatchSchema;->sendIntent(Landroid/content/Context;Lcom/android/calendar/common/ActionSchema;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
