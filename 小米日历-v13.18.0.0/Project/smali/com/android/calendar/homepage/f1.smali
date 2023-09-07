.class public final synthetic Lcom/android/calendar/homepage/f1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/h1;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/h1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/f1;->a:Lcom/android/calendar/homepage/h1;

    iput-boolean p2, p0, Lcom/android/calendar/homepage/f1;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/f1;->a:Lcom/android/calendar/homepage/h1;

    iget-boolean v1, p0, Lcom/android/calendar/homepage/f1;->b:Z

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/h1;->a(Lcom/android/calendar/homepage/h1;Z)V

    return-void
.end method
