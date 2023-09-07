.class public interface abstract Lokhttp3/b;
.super Ljava/lang/Object;
.source "Authenticator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00082\u00020\u0001:\u0001\tJ\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a8\u0006\n"
    }
    d2 = {
        "Lokhttp3/b;",
        "",
        "Lokhttp3/c0;",
        "route",
        "Lokhttp3/a0;",
        "response",
        "Lokhttp3/y;",
        "authenticate",
        "c",
        "a",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/b;

.field public static final b:Lokhttp3/b;

.field public static final c:Lokhttp3/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/b$a;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/b;->c:Lokhttp3/b$a;

    .line 8
    .line 9
    new-instance v0, Lokhttp3/b$a$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lokhttp3/b$a$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    .line 15
    .line 16
    new-instance v0, Ltb/b;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v0, v1, v2, v1}, Ltb/b;-><init>(Lokhttp3/p;ILkotlin/jvm/internal/o;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lokhttp3/b;->b:Lokhttp3/b;

    .line 23
    .line 24
    return-void
    .line 25
    .line 26
    .line 27
.end method


# virtual methods
.method public abstract authenticate(Lokhttp3/c0;Lokhttp3/a0;)Lokhttp3/y;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
