.class public final synthetic Lcom/android/calendar/homepage/productivity/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

.field public final synthetic b:Lcom/android/calendar/common/event/schema/Event;

.field public final synthetic c:Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/f;->a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    iput-object p2, p0, Lcom/android/calendar/homepage/productivity/f;->b:Lcom/android/calendar/common/event/schema/Event;

    iput-object p3, p0, Lcom/android/calendar/homepage/productivity/f;->c:Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/f;->a:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/f;->b:Lcom/android/calendar/common/event/schema/Event;

    iget-object v2, p0, Lcom/android/calendar/homepage/productivity/f;->c:Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;)V

    return-void
.end method
