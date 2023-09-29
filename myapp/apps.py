from django.apps import AppConfig


class BaseConfig(AppConfig):
    name = 'myapp'

    def ready(self):
        import myapp.signals
