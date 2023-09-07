.class public Lcom/xiaomi/analytics/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/analytics/AdAction;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/AdAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newAdAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    .locals 1

    .line 2
    new-instance v0, Lcom/xiaomi/analytics/AdAction;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/analytics/AdAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newCustomAction()Lcom/xiaomi/analytics/CustomAction;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/analytics/CustomAction;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/analytics/CustomAction;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method public static newEventAction(Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/analytics/EventAction;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/EventAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newEventAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    .locals 1

    .line 2
    new-instance v0, Lcom/xiaomi/analytics/EventAction;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/analytics/EventAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
