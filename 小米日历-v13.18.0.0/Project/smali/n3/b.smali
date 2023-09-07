.class public Ln3/b;
.super Ln3/c;
.source "AnniversaryNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c<",
        "Lcom/miui/calendar/alerts/entities/AnniversaryAlert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/AnniversaryAlert;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)V

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
.method protected a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 10
    .line 11
    check-cast v0, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventDescription()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Ln3/c;->e:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    return-object v0
    .line 21
    .line 22
.end method

.method protected d(Lm3/a$b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/c;->d(Lm3/a$b;)V

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
