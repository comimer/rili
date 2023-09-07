.class public abstract Lnet/fortuna/ical4j/validate/AbstractCalendarValidatorFactory;
.super Ljava/lang/Object;
.source "AbstractCalendarValidatorFactory.java"


# static fields
.field private static instance:Lnet/fortuna/ical4j/validate/CalendarValidatorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lnet/fortuna/ical4j/validate/CalendarValidatorFactory;

    .line 2
    .line 3
    const-class v1, Lnet/fortuna/ical4j/validate/DefaultCalendarValidatorFactory;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnet/fortuna/ical4j/validate/CalendarValidatorFactory;

    .line 22
    .line 23
    sput-object v0, Lnet/fortuna/ical4j/validate/AbstractCalendarValidatorFactory;->instance:Lnet/fortuna/ical4j/validate/CalendarValidatorFactory;

    .line 24
    .line 25
    return-void
    .line 26
    .line 27
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/validate/CalendarValidatorFactory;
    .locals 1

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/validate/AbstractCalendarValidatorFactory;->instance:Lnet/fortuna/ical4j/validate/CalendarValidatorFactory;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
