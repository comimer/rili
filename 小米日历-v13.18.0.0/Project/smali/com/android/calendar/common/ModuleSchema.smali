.class public Lcom/android/calendar/common/ModuleSchema;
.super Ljava/lang/Object;
.source "ModuleSchema.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/calendar/common/ModuleSchema;",
        ">;"
    }
.end annotation


# instance fields
.field public actionIcon:Ljava/lang/String;

.field public actionList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/common/ActionSchema;",
            ">;"
        }
    .end annotation
.end field

.field public category:Ljava/lang/String;

.field public fontColor:Ljava/lang/String;

.field public moduleIcon:Ljava/lang/String;

.field public moduleTplId:J

.field public sort:I

.field public subTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/common/ModuleSchema;Z)Lcom/miui/calendar/util/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/common/ModuleSchema;->getActionIntentToMarket(Z)Lcom/miui/calendar/util/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method private getActionIntent(Landroid/content/Context;)Lcom/miui/calendar/util/a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/common/ModuleSchema;->getActionIntent(Landroid/content/Context;Ljava/util/Map;)Lcom/miui/calendar/util/a;

    move-result-object p1

    return-object p1
.end method

.method private getActionIntent(Landroid/content/Context;Ljava/util/Map;)Lcom/miui/calendar/util/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/calendar/util/a;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/common/ModuleSchema;->getIntent(Landroid/content/Context;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p2, Lcom/miui/calendar/util/a;

    invoke-direct {p2, p1}, Lcom/miui/calendar/util/a;-><init>(Landroid/content/Intent;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getActionIntentToMarket(Z)Lcom/miui/calendar/util/a;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/ModuleSchema;->hasAction()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/calendar/common/ActionSchema;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/calendar/common/ActionSchema;->actionParams:Lcom/android/calendar/common/ActionSchema$ParamsSchema;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1, p1}, Lcom/android/calendar/common/ActionSchema;->getIntentToMarket(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance p1, Lcom/miui/calendar/util/a;

    .line 36
    .line 37
    invoke-direct {p1, v1}, Lcom/miui/calendar/util/a;-><init>(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return-object p1
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public static getListType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/common/ModuleSchema$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/common/ModuleSchema$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
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

.method private hasAction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private isActionListEquals(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/ActionSchema;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    :cond_1
    if-nez v0, :cond_2

    .line 15
    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq v0, v3, :cond_4

    .line 27
    .line 28
    :cond_3
    return v2

    .line 29
    :cond_4
    move v0, v2

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v0, v3, :cond_6

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/calendar/common/ActionSchema;

    .line 45
    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Lcom/android/calendar/common/ActionSchema;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    return v1
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method


# virtual methods
.method public compareTo(Lcom/android/calendar/common/ModuleSchema;)I
    .locals 1

    .line 2
    iget p1, p1, Lcom/android/calendar/common/ModuleSchema;->sort:I

    iget v0, p0, Lcom/android/calendar/common/ModuleSchema;->sort:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/ModuleSchema;

    invoke-virtual {p0, p1}, Lcom/android/calendar/common/ModuleSchema;->compareTo(Lcom/android/calendar/common/ModuleSchema;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    instance-of v1, p1, Lcom/android/calendar/common/ModuleSchema;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/android/calendar/common/ModuleSchema;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/android/calendar/common/ModuleSchema;->moduleTplId:J

    .line 11
    .line 12
    cmp-long v1, v1, v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/calendar/common/ModuleSchema;->title:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/calendar/common/ModuleSchema;->title:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p1, Lcom/android/calendar/common/ModuleSchema;->subTitle:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/calendar/common/ModuleSchema;->subTitle:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/calendar/common/ModuleSchema;->moduleIcon:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/calendar/common/ModuleSchema;->moduleIcon:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p1, Lcom/android/calendar/common/ModuleSchema;->actionIcon:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/calendar/common/ModuleSchema;->actionIcon:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/android/calendar/common/ModuleSchema;->isActionListEquals(Ljava/util/List;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :cond_0
    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/common/ModuleSchema;->getIntent(Landroid/content/Context;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getIntent(Landroid/content/Context;Ljava/util/Map;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/android/calendar/common/ModuleSchema;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/common/ActionSchema;

    .line 5
    invoke-virtual {v1, p1, p2}, Lcom/android/calendar/common/ActionSchema;->toIntent(Landroid/content/Context;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendIntent(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public sendIntent(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;Ljava/util/Map;I)Z

    move-result p1

    return p1
.end method

.method public sendIntent(Landroid/content/Context;Ljava/util/Map;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;Ljava/util/Map;ILjava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public sendIntent(Landroid/content/Context;Ljava/util/Map;ILjava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/common/ModuleSchema;->getActionIntent(Landroid/content/Context;Ljava/util/Map;)Lcom/miui/calendar/util/a;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-virtual {p2, p1, p4, p3}, Lcom/miui/calendar/util/a;->c(Landroid/content/Context;Ljava/util/Map;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public sendIntentForDeepLink(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/ModuleSchema;->hasAction()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/calendar/common/ActionSchema;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/calendar/common/ActionSchema;->actionParams:Lcom/android/calendar/common/ActionSchema$ParamsSchema;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/calendar/common/ModuleSchema;->getActionIntentToMarket(Z)Lcom/miui/calendar/util/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/calendar/common/ModuleSchema;->getActionIntent(Landroid/content/Context;)Lcom/miui/calendar/util/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_1
    if-nez v0, :cond_3

    .line 44
    .line 45
    return v1

    .line 46
    :cond_3
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/a;->a(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public sendIntentWithInstallAppDialog(Landroid/content/Context;Lcom/miui/calendar/card/schema/SimpleDialogSchema;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/ModuleSchema;->hasAction()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/calendar/common/ActionSchema;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/calendar/common/ActionSchema;->actionParams:Lcom/android/calendar/common/ActionSchema$ParamsSchema;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p2, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    .line 38
    new-instance v1, Lcom/android/calendar/common/ModuleSchema$a;

    .line 39
    .line 40
    invoke-direct {v1, p0, p1, v0}, Lcom/android/calendar/common/ModuleSchema$a;-><init>(Lcom/android/calendar/common/ModuleSchema;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p2, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->show(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/calendar/common/ModuleSchema;->getActionIntent(Landroid/content/Context;)Lcom/miui/calendar/util/a;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lcom/miui/calendar/util/a;->a(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_1
    return-void
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method
