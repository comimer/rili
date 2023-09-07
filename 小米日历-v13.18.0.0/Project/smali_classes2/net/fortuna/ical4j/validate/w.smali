.class public final synthetic Lnet/fortuna/ical4j/validate/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lnet/fortuna/ical4j/model/Property;


# direct methods
.method public synthetic constructor <init>(ZLnet/fortuna/ical4j/model/Property;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/fortuna/ical4j/validate/w;->a:Z

    iput-object p2, p0, Lnet/fortuna/ical4j/validate/w;->b:Lnet/fortuna/ical4j/model/Property;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lnet/fortuna/ical4j/validate/w;->a:Z

    iget-object v1, p0, Lnet/fortuna/ical4j/validate/w;->b:Lnet/fortuna/ical4j/model/Property;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lnet/fortuna/ical4j/validate/PropertyValidator;->i(ZLnet/fortuna/ical4j/model/Property;Ljava/lang/String;)V

    return-void
.end method
