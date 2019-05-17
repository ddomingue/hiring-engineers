try:
	from checks import AgentCheck
except ImportError:
	from datadog_checks.checks import AgentCheck

import random
__version__ = "1.0.0"

class MyMetric(AgentCheck):
	def check(self, instance):
		self.gauge('my_metrics',"{}".format(random.randint(1,1000)))

