.class public interface abstract Lat/bitfire/ical4android/AndroidTaskListFactory;
.super Ljava/lang/Object;
.source "AndroidTaskListFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lat/bitfire/ical4android/AndroidTaskList<",
        "+",
        "Lat/bitfire/ical4android/AndroidTask;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0010\u0008\u0000\u0010\u0001 \u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004J%\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lat/bitfire/ical4android/AndroidTaskListFactory;",
        "T",
        "Lat/bitfire/ical4android/AndroidTaskList;",
        "Lat/bitfire/ical4android/AndroidTask;",
        "",
        "newInstance",
        "account",
        "Landroid/accounts/Account;",
        "provider",
        "Lat/bitfire/ical4android/TaskProvider;",
        "id",
        "",
        "(Landroid/accounts/Account;Lat/bitfire/ical4android/TaskProvider;J)Lat/bitfire/ical4android/AndroidTaskList;",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract newInstance(Landroid/accounts/Account;Lat/bitfire/ical4android/TaskProvider;J)Lat/bitfire/ical4android/AndroidTaskList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lat/bitfire/ical4android/TaskProvider;",
            "J)TT;"
        }
    .end annotation
.end method
