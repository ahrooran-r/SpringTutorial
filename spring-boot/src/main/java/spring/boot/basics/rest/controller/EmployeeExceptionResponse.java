package spring.boot.basics.rest.controller;

import lombok.Data;

@Data
public class EmployeeExceptionResponse {
    private int status;
    private String message;
    private String timeStamp;
}
