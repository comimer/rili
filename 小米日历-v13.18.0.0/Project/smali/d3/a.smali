.class public Ld3/a;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Ld3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld3/b<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final a:Ld3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/a<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Ld3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld3/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ld3/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld3/a;->a:Ld3/a;

    .line 7
    .line 8
    new-instance v0, Ld3/a$a;

    .line 9
    .line 10
    invoke-direct {v0}, Ld3/a$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ld3/a;->b:Ld3/c;

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ld3/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Ld3/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ld3/a;->b:Ld3/c;

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


# virtual methods
.method public a(Ljava/lang/Object;Ld3/b$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
