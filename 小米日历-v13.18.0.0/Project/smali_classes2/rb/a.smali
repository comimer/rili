.class public final synthetic Lrb/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/validate/Validator;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/validate/Validator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb/a;->a:Lnet/fortuna/ical4j/validate/Validator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lrb/a;->a:Lnet/fortuna/ical4j/validate/Validator;

    check-cast p1, Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-interface {v0, p1}, Lnet/fortuna/ical4j/validate/Validator;->validate(Ljava/lang/Object;)V

    return-void
.end method
