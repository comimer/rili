.class public interface abstract Lkotlinx/coroutines/channels/ReceiveChannel;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/ReceiveChannel$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002J\"\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u00a6@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u00a6\u0002J\u001a\u0010\u000e\u001a\u00020\r2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000bH&R\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R#\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u000f8&X\u00a6\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "E",
        "",
        "Lkotlinx/coroutines/channels/h;",
        "i",
        "(Lkotlin/coroutines/c;)Ljava/lang/Object;",
        "h",
        "()Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "iterator",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cause",
        "Lkotlin/u;",
        "d",
        "Lkotlinx/coroutines/selects/d;",
        "a",
        "()Lkotlinx/coroutines/selects/d;",
        "onReceive",
        "g",
        "onReceiveCatching",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# virtual methods
.method public abstract a()Lkotlinx/coroutines/selects/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract g()Lkotlinx/coroutines/selects/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "Lkotlinx/coroutines/channels/h<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public abstract i(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlinx/coroutines/channels/h<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation
.end method
