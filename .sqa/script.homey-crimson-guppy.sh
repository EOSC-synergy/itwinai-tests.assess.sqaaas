# SPDX-FileCopyrightText: Copyright contributors to the Software Quality Assurance as a Service (SQAaaS) project <sqaaas@ibergrid.eu>
# SPDX-FileContributor: Pablo Orviz <orviz@ifca.unican.es>
#
# SPDX-License-Identifier: GPL-3.0-only

(
cd github.com/r-sarma/itwinai-tests &&
    make torch-env-cpu&&
    .venv-pytorch/bin/pytest -v ./tests/ --disable-warnings -n logical --dist loadfile -m "not hpc and not memory_heavy and not tensorflow"
)