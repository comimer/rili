.class public interface abstract Lnet/fortuna/ical4j/agent/UserAgent;
.super Ljava/lang/Object;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/fortuna/ical4j/model/component/CalendarComponent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/fortuna/ical4j/model/Calendar;"
        }
    .end annotation
.end method

.method public varargs abstract cancel([Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lnet/fortuna/ical4j/model/Calendar;"
        }
    .end annotation
.end method

.method public abstract counter(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
.end method

.method public abstract declineCounter(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
.end method

.method public abstract delegate(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
.end method

.method public varargs abstract publish([Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lnet/fortuna/ical4j/model/Calendar;"
        }
    .end annotation
.end method

.method public abstract refresh(Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/fortuna/ical4j/model/Calendar;"
        }
    .end annotation
.end method

.method public abstract reply(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
.end method

.method public varargs abstract request([Lnet/fortuna/ical4j/model/component/CalendarComponent;)Lnet/fortuna/ical4j/model/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lnet/fortuna/ical4j/model/Calendar;"
        }
    .end annotation
.end method
