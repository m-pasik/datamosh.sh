SCRIPT_NAME = datamosh.sh
INSTALL_NAME = datamosh
USER_INSTALL_DIR = ${HOME}/.local/bin
ROOT_INSTALL_DIR = /usr/local/bin

install:
ifneq ($(shell id -u), 0)
	@echo "Installing ${SCRIPT_NAME} to ${USER_INSTALL_DIR}/${INSTALL_NAME}."
	@install -m 755 ${SCRIPT_NAME} ${USER_INSTALL_DIR}/${INSTALL_NAME}
	@echo "Installed ${INSTALL_NAME} locally."
else
	@echo "Installing ${SCRIPT_NAME} to ${ROOT_INSTALL_DIR}/${INSTALL_NAME}."
	@install -m 755 ${SCRIPT_NAME} ${ROOT_INSTALL_DIR}/${INSTALL_NAME}
	@echo "Installed ${INSTALL_NAME} globally."
endif

