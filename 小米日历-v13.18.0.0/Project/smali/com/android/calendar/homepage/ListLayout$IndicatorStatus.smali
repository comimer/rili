.class public final enum Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;
.super Ljava/lang/Enum;
.source "ListLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/ListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "DOWN",
        "UP",
        "STOP",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

.field public static final enum DOWN:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

.field public static final enum STOP:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

.field public static final enum UP:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;


# direct methods
.method private static final synthetic $values()[Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    sget-object v1, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->DOWN:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->UP:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->STOP:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    .line 2
    .line 3
    const-string v1, "DOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->DOWN:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    .line 10
    .line 11
    new-instance v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    .line 12
    .line 13
    const-string v1, "UP"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->UP:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    .line 20
    .line 21
    new-instance v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    .line 22
    .line 23
    const-string v1, "STOP"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->STOP:Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->$values()[Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->$VALUES:[Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    .line 36
    .line 37
    return-void
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
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;
    .locals 1

    const-class v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;
    .locals 1

    sget-object v0, Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;->$VALUES:[Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;

    return-object v0
.end method
