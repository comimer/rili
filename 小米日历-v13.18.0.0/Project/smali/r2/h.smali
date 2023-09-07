.class public interface abstract Lr2/h;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lr2/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lr2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr2/h$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lr2/h$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr2/h;->a:Lr2/h;

    .line 7
    .line 8
    new-instance v0, Lr2/j$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lr2/j$a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lr2/j$a;->a()Lr2/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lr2/h;->b:Lr2/h;

    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
