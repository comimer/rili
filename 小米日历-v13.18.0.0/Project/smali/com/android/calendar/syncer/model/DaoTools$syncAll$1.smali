.class final Lcom/android/calendar/syncer/model/DaoTools$syncAll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DaoTools.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/model/DaoTools;->syncAll$default(Lcom/android/calendar/syncer/model/DaoTools;Ljava/util/List;Ljava/util/Map;Lw7/l;Lw7/p;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/p<",
        "TT;TT;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000\"\u0008\u0008\u0001\u0010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00028\u0001H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "K",
        "Lcom/android/calendar/syncer/model/IdEntity;",
        "T",
        "<anonymous parameter 0>",
        "<anonymous parameter 1>",
        "Lkotlin/u;",
        "invoke",
        "(Lcom/android/calendar/syncer/model/IdEntity;Lcom/android/calendar/syncer/model/IdEntity;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/calendar/syncer/model/DaoTools$syncAll$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/calendar/syncer/model/DaoTools$syncAll$1;

    invoke-direct {v0}, Lcom/android/calendar/syncer/model/DaoTools$syncAll$1;-><init>()V

    sput-object v0, Lcom/android/calendar/syncer/model/DaoTools$syncAll$1;->INSTANCE:Lcom/android/calendar/syncer/model/DaoTools$syncAll$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/model/IdEntity;

    .line 2
    .line 3
    check-cast p2, Lcom/android/calendar/syncer/model/IdEntity;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/model/DaoTools$syncAll$1;->invoke(Lcom/android/calendar/syncer/model/IdEntity;Lcom/android/calendar/syncer/model/IdEntity;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 9
    .line 10
    return-object p1
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

.method public final invoke(Lcom/android/calendar/syncer/model/IdEntity;Lcom/android/calendar/syncer/model/IdEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
