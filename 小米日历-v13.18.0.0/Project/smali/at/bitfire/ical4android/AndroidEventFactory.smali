.class public interface abstract Lat/bitfire/ical4android/AndroidEventFactory;
.super Ljava/lang/Object;
.source "AndroidEventFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lat/bitfire/ical4android/AndroidEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u0003J#\u0010\u0004\u001a\u00028\u00002\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lat/bitfire/ical4android/AndroidEventFactory;",
        "T",
        "Lat/bitfire/ical4android/AndroidEvent;",
        "",
        "fromProvider",
        "calendar",
        "Lat/bitfire/ical4android/AndroidCalendar;",
        "values",
        "Landroid/content/ContentValues;",
        "(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)Lat/bitfire/ical4android/AndroidEvent;",
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
.method public abstract fromProvider(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)Lat/bitfire/ical4android/AndroidEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/bitfire/ical4android/AndroidCalendar<",
            "+",
            "Lat/bitfire/ical4android/AndroidEvent;",
            ">;",
            "Landroid/content/ContentValues;",
            ")TT;"
        }
    .end annotation
.end method
