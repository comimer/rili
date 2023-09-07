.class public final Lat/bitfire/dav4jvm/exception/NotFoundException;
.super Lat/bitfire/dav4jvm/exception/HttpException;
.source "NotFoundException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0013\u0008\u0016\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/exception/NotFoundException;",
        "Lat/bitfire/dav4jvm/exception/HttpException;",
        "Lokhttp3/a0;",
        "response",
        "<init>",
        "(Lokhttp3/a0;)V",
        "",
        "message",
        "(Ljava/lang/String;)V",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x194

    .line 2
    invoke-direct {p0, v0, p1}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/a0;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(Lokhttp3/a0;)V

    return-void
.end method
