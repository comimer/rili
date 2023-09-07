.class public final Lcom/android/calendar/syncer/model/SyncState;
.super Ljava/lang/Object;
.source "SyncState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/model/SyncState$Companion;,
        Lcom/android/calendar/syncer/model/SyncState$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ.\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\u0008\u0010\u001b\u001a\u00020\u0005H\u0016R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/SyncState;",
        "",
        "type",
        "Lcom/android/calendar/syncer/model/SyncState$Type;",
        "value",
        "",
        "initialSync",
        "",
        "(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "getInitialSync",
        "()Ljava/lang/Boolean;",
        "setInitialSync",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getType",
        "()Lcom/android/calendar/syncer/model/SyncState$Type;",
        "getValue",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/calendar/syncer/model/SyncState;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "Type",
        "syncer_release"
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
.field public static final Companion:Lcom/android/calendar/syncer/model/SyncState$Companion;

.field private static final KEY_INITIAL_SYNC:Ljava/lang/String; = "initialSync"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private initialSync:Ljava/lang/Boolean;

.field private final type:Lcom/android/calendar/syncer/model/SyncState$Type;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/syncer/model/SyncState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/model/SyncState$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/syncer/model/SyncState;->Companion:Lcom/android/calendar/syncer/model/SyncState$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/calendar/syncer/model/SyncState;->type:Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 3
    iput-object p2, p0, Lcom/android/calendar/syncer/model/SyncState;->value:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/syncer/model/SyncState;-><init>(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/calendar/syncer/model/SyncState;Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/android/calendar/syncer/model/SyncState;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/android/calendar/syncer/model/SyncState;->type:Lcom/android/calendar/syncer/model/SyncState$Type;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/android/calendar/syncer/model/SyncState;->value:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/syncer/model/SyncState;->copy(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/calendar/syncer/model/SyncState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/android/calendar/syncer/model/SyncState$Type;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/SyncState;->type:Lcom/android/calendar/syncer/model/SyncState$Type;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/SyncState;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/calendar/syncer/model/SyncState;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/calendar/syncer/model/SyncState;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/calendar/syncer/model/SyncState;-><init>(Lcom/android/calendar/syncer/model/SyncState$Type;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/calendar/syncer/model/SyncState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/calendar/syncer/model/SyncState;

    iget-object v1, p0, Lcom/android/calendar/syncer/model/SyncState;->type:Lcom/android/calendar/syncer/model/SyncState$Type;

    iget-object v3, p1, Lcom/android/calendar/syncer/model/SyncState;->type:Lcom/android/calendar/syncer/model/SyncState$Type;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/syncer/model/SyncState;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/syncer/model/SyncState;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInitialSync()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public final getType()Lcom/android/calendar/syncer/model/SyncState$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/SyncState;->type:Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/SyncState;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/syncer/model/SyncState;->type:Lcom/android/calendar/syncer/model/SyncState$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/calendar/syncer/model/SyncState;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setInitialSync(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/syncer/model/SyncState;->type:Lcom/android/calendar/syncer/model/SyncState$Type;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "type"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/calendar/syncer/model/SyncState;->value:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "value"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/calendar/syncer/model/SyncState;->initialSync:Ljava/lang/Boolean;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "initialSync"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "json.toString()"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
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
